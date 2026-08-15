# ④ 动画处理（Alchemist IK / Additive）

> 本章基于 WetEgg 撰写的 [gscode 官方 Alchemist 教程](https://wiki.gscode.net/docs/software/alchemist/alchemist-usage) 改写，针对 MW2019+ → Source/Gmod 的用途做了适配说明。

## 为什么需要 Alchemist

现代 COD（自 Infinite Warfare 起）的视模动画大量依赖两种 Source 引擎不能直接使用的机制：

1. **IK（逆向动力学）**：游戏里左手（或右手）是通过 IK 实时吸附到枪的握把/护木上的（对应骨骼 `tag_ik_loc_le` / `tag_ik_loc_ri`）。直接导出的动画里手部位置并不正确，还会有因游戏内压缩导致的**手部微抖动**；
2. **Additive（叠加动画）**：冲刺（sprint）、滑铲（slide）等动画不是完整动画，而是“叠加在 idle 之上的偏移量”。Source 引擎虽然支持 additive，但用法不同，需要先把它们**烘焙成完整动画**。

Alchemist 就是专门做这两件事的工具：指定手部要吸附的骨骼名（IK 目标），把 additive 按顺序叠加到基础动画上，输出烘焙好的 `.cast` 动画。

## 准备工作

### 目录建议

在 Alchemist 目录下建几个固定文件夹，长期使用会舒服很多：

```
Alchemist\
  Project Files\    ← 项目文件（.alc 工程）
  Source Files\     ← 原始动画与模型（按游戏分子文件夹）
  Output\           ← 输出（按武器分子文件夹）
```

### 必需的源文件

1. **视模手臂骨骼模型**：MW2019 及之后的游戏都用 `viewhands_mp_base_iw8`（LOD0）——Alchemist 需要目标游戏的视模骨骼来合成动画。如果你使用 ThomasCat 的 IW8-T7 Maya 转换绑定，**必须**用这个模型（骨骼结构一致，否则出问题）；
2. **合并后的完整武器模型**：用 ModelMerger 合并的 `.cast`（见[模型章节](/guide/models)）——Alchemist 需要它的骨骼；
3. **武器的全部动画**：不确定需要哪些就全部导出。

### 找到动画文件

- 武器动画命名有规律：`*_idle`、`*_raise`（掏出）、`*_drop`（收起）、`*_reload*`、`*_sprint_*`、`*_inspect` 等；
- 手部姿势动画通常叫 `*_pose_l` / `*_hand_pose_l`（左/右手）；配件改变握持姿势时形如 `hand_pose_l_gripvert`（垂直握把）；
- 找不到某把枪的手部姿势动画时，它可能**复用了别的武器的**——在 Saluki 中导出该武器的 **animpackage** 文件（MW2019 / 先锋及更新作品支持），里面列出了全部动画引用。

## 创建 Alchemist 项目

1. 打开 Alchemist，先按 `C`（或保存图标）**另存为**新项目，命名如 `iw9_ar_mike4`；之后随时按 `B` 保存；
2. 把基础动画（一般是普通 `idle`，**不要**用 `idle_active`——那本身就是个叠加层）拖入动画列表；
3. 左键选中动画条目，按 `N` / `O`（或顶部左右手图标）分别设置**左手/右手姿势动画**；
4. 如果用改变握持姿势的配件（如垂直握把），把姿势动画换成对应的（`hand_pose_l_gripvert` 等）。

### 配件的 IK 处理

- 可以在该动画的 IK 设置列里，把 **Left Hand IK Target Bone** 设为配件使用的骨骼名（如 `tag_ik_loc_le_grip`）；
- 更好的做法：点顶部齿轮，设置**项目全局 IK 骨骼**——不用每个动画单独设；
- **不用担心换弹动画**：动画上的 notetrack 会像游戏里一样自动切入/切出手部姿势与 IK，换手时手不会一直粘在握把上。

## 设置 Parts（骨骼）

Parts 区定义动画合成所用的骨架：

1. 把视模骨骼 `viewhands_mp_base_iw8_LOD0` 拖进来，把它的类型从 `Attachment` 改为 **`ViewHands`**；
2. 把合并好的武器模型拖到手模下面，类型保持 `Attachment`，把 **Parent Bone Name** 设为 `tag_weapon`（大多数武器如此；手势类武器如有异常可试手模上的其他骨骼）。

## 叠加 Additive：以冲刺为例

::: warning 铁律：叠加顺序很重要
Additive 的**应用顺序会影响结果**，尤其是移动类（walk/jog/sprint/supersprint）与左右手手势类动画。
:::

以 sprint_in / sprint_loop / sprint_out 三个动画为例：

1. **复制基础 idle**：选中它按 `Ctrl+C` / `Ctrl+V`，做三份；在 Output Info 列把输出名改成 `_sprint_in`、`_sprint_loop`、`_sprint_out`；
2. **设置输出目录**：`Ctrl+A` 全选动画，按 `G`（或文件夹图标）选择输出文件夹——**务必输出到单独文件夹，不要覆盖源动画**；
3. **sprint_in**：从状态 A 到状态 B 的动画，先加**起始状态的 offset**：
   - 先拖入 `walk_offset_additive`（因为动画开始时还在走路状态）；
   - 再拖入 `walk_to_sprint`（真正的过渡动作）；
   - 顺序错了可以用条目上的上下箭头调整；
4. **sprint_loop**：先加 `sprint_offset_animation`（现在处于冲刺状态），再加 `sprint_loop`；
5. **sprint_out**：与 sprint_in 类似，先 `walk_offset_additive`，再加 `sprint_to_walk`；
6. 按 `E`（或导出图标）导出，输出文件夹里就得到烘焙好的动画，可导入转换绑定/Blender 检查。

::: tip 实用技巧
- 列太窄看不清时按 `Ctrl+Q` 自动调整列宽（建议全屏使用）；
- 部分 `sprint_loop` 的 IK 不会正确切出，导致手一直粘在枪上——取消勾选该动画的 **Use Left Hand IK** 即可（很多手枪冲刺都有这个问题）；
- 导出时 Alchemist 报错退出别慌，会自动保存；说明项目缺少信息，回头检查 Parts、姿势、IK 设置。
:::

## 手势（Gesture）类动画：以滑铲为例

滑铲动画用的是**左右手分开的手势叠加层**，设置稍有不同：

1. 复制 idle 设置四份：`slide_in_air`（跳跃中滑铲起始）、`slide_in`、`slide_loop`、`slide_out`；
2. 对 `slide_in` / `slide_in_air`：
   - 先拖入左手手势叠加层，如 `vm_gesture_default_slide_in`，把它的类型改为 **`Gesture`**；
   - 再拖入右手动画 `vm_gesture_default_slide_in_rhand`，类型改为 **`Gesture Pose`**；
   - 右手必须在左手之后（顺序！）；
3. `slide_loop` / `slide_out` 同理；`slide_loop` 也可能需要关闭左手 IK；
4. 社区里常用 **Infinite Warfare 的滑铲叠加层**，手感比新作品更贴合；additive 的好处就是不同作品间可以混搭。

::: tip 进阶
想要“冲刺接滑铲”动画？把 slide_in 的叠加层加在一个以你输出的 `sprint_out` 为基础动画的条目上即可——这样冲刺滑铲的结束姿势与站立滑铲一致，即 bunny hop 滑铲的常见效果。
:::

## Notetrack 事件（音效 / IK 开关）

COD 动画内置 notetrack，记录了音效触发、IK 切换等信息。提取后可以转成 QC 的 `{ event ... }`：

```
{ event 5004 0 "wfoly_plr_pi_golf17_reload_01" }   ← 第 0 帧播放音效（事件 5004 = 音效）
{ event 9011 0 "0" }                               ← 9011：IK/手部吸附开关（0=关 1=开）
{ event 5004 8 "wfoly_plr_pi_golf17_reload_02" }   ← 第 8 帧
{ event 9031 16 "ResetBullets" }                   ← 9031：MWBase 脚本事件
{ event 9011 49 "1" }
```

- 完整示例下载：[notetrack_reload_example.txt](/examples/notetrack_reload_example.txt)；
- 这些事件写进 QC 的 `$sequence` 块里（见 [QC 章节](/guide/qc)），MWBase 会解析 `5004`（音效名需与 Lua 音效表对应）、`9011`、`9021`、`9031` 等事件号。

## 导出后的处理

Alchemist 输出的是烘焙好的动画（`.cast`）。回到 Blender：

1. 用 Cast 插件导入到武器的骨架上；
2. 检查无误后用 Blender Source Tools 导出 **动画 SMD**；
3. 在 QC 中用 `$sequence` 引用（见 [QC 章节](/guide/qc)）。

社区现成的 MW 武器包（如示例的 `v_mike4_anims`、`v_romeo870_anims`、`v_sprint` 文件夹）里有大量已处理好的动画 SMD，**同类型武器可以直接复用**，这也是“套皮”做法高效的原因。

---

下一步：[⑤ QC 文件编写详解](/guide/qc)
