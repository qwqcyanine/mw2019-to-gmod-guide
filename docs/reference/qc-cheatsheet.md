# QC 常用命令速查

本页收录 MW→Gmod 武器移植中最常用的 QC 命令。完整列表见 [Valve 开发者维基](https://developer.valvesoftware.com/wiki/Category:QC_commands)。

## 基础

| 命令 | 作用 | 示例 |
| --- | --- | --- |
| `$modelname` | 编译输出的 mdl 路径（相对 models/） | `$modelname "dqr/mw2/x123/v_x123.mdl"` |
| `$bodygroup` | 部件组（可含 `blank` 选项） | 见下方代码块 |
| `$cdmaterials` | VMT 查找目录（可多条） | `$cdmaterials "mw2/x123/"` |
| `$surfaceprop` | 表面材质属性 | `$surfaceprop "weapon"` |
| `$contents` | 碰撞内容标志 | `$contents "solid"` |
| `$mostlyopaque` | 渲染优化：大部分不透明 | 单独一行 |
| `$illumposition` | 光照参考点 | `$illumposition 0 0 0` |
| `$cbox` / `$bbox` | 碰撞盒 / 包围盒 | `$bbox -8 -33 -64 36 14 64` |

```
$bodygroup "receiver_0"
{
    studio "xxx_rec_v0_LOD0.smd"
    blank        ← 允许隐藏该部件
}
```

## 骨骼与挂点

| 命令 | 作用 | 示例 |
| --- | --- | --- |
| `$definebone` | 定义骨骼（第二组数值是可编辑补偿） | `$definebone "tag_brass" "tag_pistol_offset" 0 0 0 0 0 0 0 0 0 0 0 0` |
| `$attachment` | 定义挂点（名称被 MWBase 识别） | `$attachment "shell_eject" "tag_brass" 0 0 0 rotate -30 0 0` |
| `$bonemerge` | 允许骨骼被合并驱动（w_ 模型/配件） | `$bonemerge "ValveBiped.Bip01_R_Hand"` |
| `$ikchain` | 声明 IK 链 | `$ikchain "rhand" "j_wrist_ri" knee 0.707 0.707 0` |
| `$renamematerial` | 重命名材质 | `$renamematerial "old" "new"` |

## 动画

| 命令 | 作用 | 示例 |
| --- | --- | --- |
| `$sequence` | 定义动画序列（可被代码调用） | 见下方代码块 |
| `$animation` | 定义中间动画（供 sequence 引用/运算） | 见下方代码块 |
| `subtract` | 减去某动画的某帧，得到增量 | `subtract "a_idle" 0` |
| `delta` | 标记为增量动画 | 配合 `$animation` |
| `addlayer` | 在序列上叠加另一动画 | `addlayer "a_sprint_offset"` |
| `blend` | 混合参数驱动的姿势混合 | `blend move_x -1 1` |
| `fps` | 动画帧率 | `fps 30` |
| `fadein` / `fadeout` | 过渡混合时间 | `fadein 0.2` |
| `loop` | 循环播放 | 序列内一行 |
| `{ event N F "P" }` | 第 F 帧触发事件 N 参数 P | `{ event 5004 8 "wfoly_..." }` |

```
$animation "a_walk_idle_to_sub" "v_romeo870_anims\a_walk_idle.smd" {
    fps 30
    subtract "a_walk_idle_to_sub" 0
}

$sequence "reload" {
    "x123_smd\vm_p24_pi_golf17_reload.smd"
    fadein 0.2
    fadeout 0.2
    fps 30
    { event 5004 0 "wfoly_plr_pi_golf17_reload_01" }
    { event 9011 0 "0" }
    { event 9011 49 "1" }
}
```

## MW 武器包常用事件号

| 事件号 | 用途 | 参数 |
| --- | --- | --- |
| `5004` | 播放音效 | 音效脚本名（Lua `sound.Add` 注册） |
| `9011` | 手部 IK 吸附开关 | `"0"` 关 / `"1"` 开 |
| `9021` | MWBase 扩展事件 | 视基座约定 |
| `9031` | MWBase 脚本事件 | 如 `"ResetBullets"` |

## 物理（w_ 模型）

```
$collisionmodel "w_xxx_physics.smd"
{
    $mass 1
    $inertia 1
    $damping 0
    $rotdamping 0
}
```

## 其他常用

| 命令 | 作用 |
| --- | --- |
| `$origin x y z` | 整体平移模型 |
| `$scale n` | 整体缩放 |
| `$upaxis Y` | 指定上轴（某些导出流程需要） |
| `$texturegroup` | 皮肤组（多皮肤切换） |
| `$keyvalues` | 附加键值（可为空） |

## SMD 格式备注

SMD 是文本格式，分 `nodes`（骨骼表）、`skeleton`（逐帧骨骼变换）、`triangles`（网格）三段。动画 SMD 只有 nodes + skeleton。详见 [SMD 格式维基](https://developer.valvesoftware.com/wiki/SMD)。
