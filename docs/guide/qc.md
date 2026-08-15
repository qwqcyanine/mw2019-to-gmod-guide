# ⑤ QC 文件编写详解

QC 是 StudioMDL 编译器的“配方”文件：它告诉编译器模型由哪些 SMD 组成、骨骼如何定义、动画序列有哪些、材质去哪找。本章以真实成品 `v_x123.qc`（COD19 X13 Auto 手枪的 Gmod 视模，1857 行）为主线逐段讲解。

- 完整示例下载：[v_x123.qc](/examples/v_x123.qc)（手枪视模）/ [v_sr25.qc](/examples/v_sr25.qc)（射手步枪视模）
- 官方命令参考：[Valve Developer Community - QC commands](https://developer.valvesoftware.com/wiki/Category:QC_commands)

## 1. 头部：模型名与网格

```
$modelname "dqr/mw2/x123/v_x123.mdl"      ← 编译输出路径（相对 models/）

$bodygroup "receiver_0"                    ← 主体组：机匣
{
    studio "att_vm_p24_pi_golf18_rec_v0_LOD0.smd"
    blank                                  ← blank = 可以隐藏（配件系统用）
}
$bodygroup "ammo"                          ← 弹头组（供脚本切换显示）
{
    studio "ammo.smd"
    blank
}

$surfaceprop "weapon"                      ← 表面材质（决定命中音效/物理特性）
$contents "solid"
$illumposition 0 0 0
$mostlyopaque                              ← 大部分不透明，优化渲染排序

$cdmaterials "mw2/x123/"                   ← VMT 查找目录（可写多行，按顺序找）
$cdmaterials "mw2/x123/mag/"
$cdmaterials "mw2/x123/psg/"
```

要点：

- `$bodygroup` 是 MWBase 配件/弹种显示的核心——每个可选部件一个 bodygroup，带 `blank` 允许“不装”；
- `$cdmaterials` 的路径必须和材质文件实际放置的 `materials/xxx/` 对应。

## 2. Attachment（挂点）

```
$attachment "shell_eject" "tag_brass" 0 0 0 rotate -30 0 0   ← 抛壳
$attachment "camera" "tag_playerhelmet" 0 0 0 rotate 0 0 0
$attachment "reflex" "tag_reflex" 0 0 0 rotate 0 0 0          ← 红点瞄具挂点
$attachment "holo" "tag_holo" 0 0 0 rotate 0 0 0
$attachment "scope" "tag_scope" 0 0 0 rotate 0 0 0
$attachment "acog" "tag_acog_2" 0 0 0 rotate 0 0 0
$attachment "hybrid" "tag_hybrid" 0 0 0 rotate 0 0 0
$attachment "thermal" "tag_thermal" 0 0 0 rotate 0 0 0
$attachment "laser" "tag_laser_attach" 0 0 0 rotate 0 0 0
$attachment "align" "tag_align_gun" 0 0 0 rotate 0 0 0
```

- 格式：`$attachment "名称" "父骨骼" 偏移xyz rotate 旋转xyz`；
- MWBase 按**名称**识别这些挂点来安装瞄具/镭射、生成枪口焰与抛壳——名称务必与基座约定一致（`shell_eject`、`muzzle`、`reflex`、`scope` 等）；
- 位置不准时改偏移数值即可，不用重编译模型网格……（需要重编译 QC，但不用动 SMD）。

## 3. $definebone（骨骼定义）

视模有一两百根骨骼（手臂 `j_wrist_le` + 每根手指三节 + ValveBiped 映射骨骼 + 枪械骨骼）。逐个手写不现实，**正确做法是从现成示例 QC 里复制整段 `$definebone`**，例如：

```
$definebone "tag_origin" "" 0 0 0 0 0 0 0 0 0 0 0 0
$definebone "tag_view" "tag_origin" -0.106 3.193533 65.086945 0 -89.999982 0 0 0 0 0 0 0
$definebone "j_wrist_le" "j_elbow_le" 11.041271 -0.000359 -0.000641 -2.335176 -2.116058 6.80216 0 0 0 0 0 0
```

格式：`$definebone "骨骼名" "父骨骼" 位置xyz 旋转rxyz 补偿位置 补偿旋转`。

### 用 $definebone 修正挂点/特效位置（重要技巧）

反编译后已存在的骨骼，**第一组位置/角度不可改**（以 SMD 为准），但**第二组（补偿值）可改**，且会叠加到第一组上。修正枪口焰/抛壳/配件位置的流程：

1. 在 Blender 里导入模型，切到 **Pose Mode**，骨骼显示设为 **Octahedral**、关掉 Bone Shapes 看得更清楚；
2. 选中目标骨骼（如 `tag_brass`）移动到正确位置（打开轴向显示、局部视图精调）；
3. 按 `N` 打开变换面板，读出当前的 Location / Rotation 值；
4. 把数值填进 QC 中该 `$definebone` 的**第二组数字**里，重新编译即可。

## 4. IK 链

```
$ikchain "rhand" "j_wrist_ri" knee 0.707 0.707 0
$ikchain "lhand" "j_wrist_le" knee 0.707 0.707 0
```

声明左右手的 IK 链，供引擎内手部吸附使用（配合 `tag_ik_loc_le/ri` 与动画事件）。

## 5. $animation：delta 与 subtract（混合动画的核心）

示例 QC 中大量动画是**程序生成**的：用 `$animation` 定义中间产物，再被 `$sequence` 引用。典型模式：

```
$animation "a_walk_idle_corrective_animation" "v_romeo870_anims\a_walk_idle_corrective_animation.smd" {
    fps 30
    subtract "a_walk_idle_corrective_animation" 0     ← 减去自身第 0 帧 = 得到纯增量
}

$animation "walk_idle_to_sub" "v_romeo870_anims\a_walk_idle.smd" { fps 30 }
$animation "a_walk_idle_to_sub" "v_romeo870_anims\a_walk_idle.smd" {
    fps 30
    subtract "a_walk_idle_to_sub" 0
}
```

这套 "xxx_to_sub + corrective" 结构是 MW 系武器包实现 **walk/jog/sprint 混合、ADS（机瞄）偏移、开火模式偏移**的标准做法：先做出“减去基准帧的增量动画”，再在 `$sequence` 里用 `addlayer` / `blend` 叠加。

::: tip
不理解也没关系——**套皮工作流里这些段落是从同类型成品 QC 原样复制的**，你只需要换 SMD 文件路径。深入阅读：[QC 命令维基](https://developer.valvesoftware.com/wiki/Category:QC_commands) 的 `$animation` 词条（`subtract`、`delta`、`additive`）。
:::

## 6. $sequence：动画序列与事件

```
$sequence "reload" {
    "x123_smd\vm_p24_pi_golf17_reload.smd"        ← 动画 SMD
    fadein 0.2
    fadeout 0.2
    fps 30
    { event 5004 0 "wfoly_plr_pi_golf17_reload_01" }   ← 音效事件
    { event 9011 0 "0" }                               ← IK 关
    { event 5004 8 "wfoly_plr_pi_golf17_reload_02" }
    { event 9031 16 "ResetBullets" }                   ← MWBase 脚本事件
    { event 9011 49 "1" }                              ← IK 开
}
```

要点：

- **序列名即 MWBase 调用名**：`idle`、`draw`、`holster`、`draw_first`、`reload`、`reload_empty`、`fire`、`ads_in/out` 等，必须与武器基座的约定一致；
- **事件**：
  - `5004` = 播放音效，参数是音效脚本名（在 addon 的 `sound/` 与 Lua 音效表里定义）；
  - `9011` = IK/手部吸附开关（0/1）；
  - `9021`、`9031` = MWBase 自定义脚本事件（如 `ResetBullets` 重置弹壳计数）；
- 事件来自动画的 notetrack（见[动画章节](/guide/animations#notetrack-事件-音效-ik-开关)）；
- `fadein/fadeout` 控制混合过渡时长，`fps 30` 匹配 COD 动画帧率。

## 7. 世界模型 QC 的差异

世界模型（[mike14_w.qc](/examples/mike14_w.qc)）有几个视模没有的部分：

```
$attachment "muzzle" "tag_flash" 0 0 0 rotate 0 0 0     ← 枪口焰在世界模型上也要

$bonemerge "ValveBiped.Bip01_R_Hand"     ← 合并到玩家右手骨骼
$bonemerge "tag_pistol_offset"
$bonemerge "tag_barrel_attach"
...                                       ← 配件/IK 挂点也要 bonemerge

$sequence "reference" { "w_stg44_test_anims\reference.smd" fadein 0.2 fadeout 0.2 fps 30 }

$collisionmodel "w_mike4_physics.smd" {   ← 物理碰撞模型
    $mass 1
    $inertia 1
    $damping 0
    $rotdamping 0
}
```

`$bonemerge` 让模型可以贴合到玩家/其他模型的同名骨骼上——这是武器显示在手上的原理。

## 8. 配件 QC

配件模型很小，QC 也简单（[bar_def.qc](/examples/bar_def.qc)、[x123_m_d.qc](/examples/x123_m_d.qc)）：

```
$modelname "dqr/mw2/x123/x123_b_d.mdl"
$bodygroup "bar_1" { studio "att_vm_p24_pi_golf18_barrel_v0_LOD0.smd" }
$cdmaterials "mw2/x123/bar/"
$cdmaterials "mw2/x123/"

$attachment "muzzle" "tag_flash_attachment" 0 0 0 rotate 0 0 0   ← 枪口挂点移到配件上
$attachment "silencer" "tag_silencer" 0 0 0 rotate 0 0 0

$definebone "tag_barrel_attach" "" 0 0 0 0 0 0 0 0 0 0 0 0       ← 根骨骼 = 挂点骨骼
$definebone "j_barrel" "tag_barrel_attach" 4.462 0 0.302 0 0 0 0 0 0 0 0 0
...
```

配件的根骨骼名与主武器上的挂点骨骼同名（`tag_barrel_attach`），MWBase 把配件 bonemerge 到主模型后位置自然吻合。

## 编写建议

1. **不要从零写**——从示例 QC（[v_x123.qc](/examples/v_x123.qc) / [v_sr25.qc](/examples/v_sr25.qc)）复制，改 `$modelname`、SMD 路径、`$cdmaterials` 三处即可起步；
2. 骨骼段落（`$definebone`）整段保留；
3. 用不到的 `$bodygroup` 和 `$sequence` 删掉；
4. 每次改动后用 Crowbar 编译并在 HLMV 中检查（见下章）。

---

下一步：[⑥ Crowbar 编译模型](/guide/compiling)
