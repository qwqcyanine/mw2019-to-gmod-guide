# ② 模型处理（Cast / Blender / SMD）

本章讲解如何把 Saluki 导出的 `.cast` 模型与动画，在 Blender 中处理并导出为 Source 引擎可用的 **SMD** 文件。

## 认识 Cast 格式

[Cast](https://github.com/dtzxporter/cast) 是 DTZxPorter 设计的开源模型/动画容器格式，也是当前 COD 提取工具链的通用交换格式。一个 `.cast` 文件可以包含：

- **模型节点**：顶点位置（`vp`）、法线（`vn`）、切线（`vt`）、顶点色（`c%d`）、UV（`u%d`）、骨骼权重（`wb`/`wv`）、面（`f`）、蒙皮方式（线性/四元数）、材质哈希等；
- **骨骼与动画节点**：完整的骨骼层级与关键帧；
- **材质节点**：记录材质名与贴图槽位（贴图路径是哈希形式，配合 Saluki 导出的贴图命名）。

Saluki 导出的所有模型和动画都是 `.cast`，需要用 Cast 官方 Blender 插件（`io_scene_cast`）导入。

## COD 武器的命名规律

理解命名能帮你快速找到文件（以 MW2019/MWII 为例）：

| 前缀/片段 | 含义 | 示例 |
| --- | --- | --- |
| `vm_` | 视模（第一人称手臂+枪） | `vm_p24_pi_golf17` |
| `wm_` | 世界模型（第三人称/掉落） | `wm_pi_golf17` |
| `att_vm_` | 视模配件 | `att_vm_p24_pi_golf18_barrel_v0` |
| `att_wm_` | 世界模型配件 | `att_wm_p24_pi_golf17_mag_v0` |
| `_p24_` `_p01_` 等 | 作品/批次代号 | MWII 多为 `p24` |
| `pi` / `ar` / `dm` / `sm` | 武器类型：手枪/步枪/射手/冲锋 | `pi_golf17`、`dm_stango25` |
| `_LOD0` | 最高细节层级 | 导出时选 LOD0 |

例如 COD19 的 X13 Auto = `golf17`，SR25 = `stango25`。完整对照查[武器代码数据库](https://docs.google.com/spreadsheets/d/10BwA8Ia-SlnaZgDFLXjdP9AfG9h7ZsWtuVdofTakxHQ/edit)。

## 合并武器部件（ModelMerger）

MW2019 之后，整枪被拆成多个部件文件（receiver、barrel、mag、pistolgrip、stock……），以支持枪匠系统。**在做动画和导出前，先用 ModelMerger 把所有 `.cast` 部件合并成一把完整的枪**：

1. 打开 ModelMerger（echo000 的 Cast 分支版本）；
2. 依次添加 receiver → barrel → mag → grip → stock 等部件的 `.cast`；
3. 导出合并后的 `.cast` 文件。

合并后的模型有两个用途：
- 在 **Alchemist** 中作为骨骼载体烘焙动画（见[动画章节](/guide/animations)）；
- 在 **Blender** 中作为参考，确定各部件位置。

## 导入 Blender 与骨骼结构

1. Blender 中 `文件 → 导入 → Cast (.cast)`，导入合并后的武器模型与 **MW2019 的视模手臂骨骼 `viewhands_mp_base_iw8`（LOD0）**（社区有现成文件，Maya 转换绑定也用它）；
2. 观察骨骼命名，分为几类：
   - **`j_` 开头**：实际可动关节骨骼，如 `j_slide`（套筒）、`j_mag1`（弹匣）、`j_trigger`（扳机）、`j_wrist_le`（左腕）、`j_gun`（枪身根）；
   - **`tag_` 开头**：挂点/定位骨骼，如 `tag_brass`（抛壳口）、`tag_flash`（枪口）、`tag_reflex` / `tag_scope` / `tag_holo`（瞄具挂点）、`tag_mag_attach`（弹匣挂点）、`tag_ik_loc_le` / `tag_ik_loc_ri`（左右手 IK 目标）、`tag_pistol_offset`（手枪身偏移）、`tag_sling`（步枪枪身）；
   - **`valvebiped.bip01_*`**：Source 引擎标准骨骼名，用于与 Gmod 的手模/动作系统对接。

这些骨骼在 QC 里对应 `$definebone` 与 `$attachment`（见 [QC 章节](/guide/qc)）。

## 绑定（Rigging）你的武器

如果你是**套皮**（把新枪模型套到现有 MW 武器动画骨架上），关键步骤：

1. 把新枪模型移动到与“动画来源枪”相同的位置对齐；
2. 把枪拆分成可动部件：编辑模式下用面选择（按 `L` 选中相连面）→ 按 `P` → `Selection` 分离。分离出的网格要**删除原有的 Vertex Groups 和 Armature 修改器**；
3. 逐个绑定：
   - 选中分离出的部件 → 再选骨架 → `Ctrl+P` → `Armature Deform With Empty Groups`；
   - 进入编辑模式全选网格，在顶点组面板中找到目标骨骼（如套筒→`j_slide`），点 **Assign**；
4. 枪身主体（不动的部分）：
   - 步枪/霰弹/狙击/机枪/射手步枪 → 绑到 `tag_sling`；
   - 手枪 → 绑到 `tag_pistol_offset`；
5. 载入一个动画 SMD 测试，确认各部件跟随正确。

::: tip
熟练后建议用权重绘制（Weight Painting）代替整体绑定，可以获得更精细的变形（如弹匣弹簧、背带等）。
:::

## 导出 SMD

1. 把绑定好的所有网格放进一个 Collection（集合），集合名改为枪名；
2. 检查每个网格的材质：**关闭 "Use Nodes"**（材质属性面板），否则导出可能出错；
3. `场景属性 → Source Engine Export`：
   - 导出格式选 **SMD**；
   - 导出路径指向你的 QC 所在文件夹；
4. 点击 `Export → Scene Export`（出现警告可忽略）；
5. 得到 `枪名.smd`。动画同理：选中动画用 Source Tools 导出动画 SMD。

## 世界模型（w_ 模型）与物理

世界模型是枪在地上/别人手中的样子：

- 用同一个模型（或低模）单独导出，根骨骼挂到 `ValveBiped.Bip01_R_Hand`（配合 `$bonemerge` 贴到玩家手上）；
- 需要制作一个简化的**物理碰撞 SMD**（`w_xxx_physics.smd`），在 QC 里用 `$collisionmodel` 引用；
- 参考示例：[mike14_w.qc](/examples/mike14_w.qc)。

## 配件模型

配件（枪管、弹匣、瞄具等）是独立的模型，根骨骼是自己的挂点（如 `tag_barrel_attach`、`tag_mag_attach`），编译后由 MWBase 通过 bonemerge 贴到主武器的同名骨骼上。参考示例：

- [bar_def.qc](/examples/bar_def.qc)（枪管配件，含 `muzzle`/`silencer` attachment）
- [x123_m_d.qc](/examples/x123_m_d.qc)（弹匣配件）

---

下一步：[③ 贴图处理（GIU + MWBMat）](/guide/textures)
