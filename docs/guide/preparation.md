# 环境与工具准备

在开始之前，请把以下软件全部准备好。本章列出每一项的用途、下载地址与安装注意事项。

## 一、游戏本体

- 需要一份 **PC 版** 的 COD（Steam / Battle.net / Xbox Game Pass 均可）。
- 本教程主线使用 **COD16 (MW2019)**；COD19/20/21 流程相同，仅解包命令与路径不同（见[解包章节](/guide/unpacking)）。
- 硬盘空间：游戏本体 100GB+，提取出来的素材另需 10~30GB，请预留充足空间。

## 二、解包工具

### Cordycep（解包核心）

- 仓库：<https://github.com/Scobalula/Cordycep>
- **注意**：GitHub 上的代码与发布**已停止同步更新**，最新版本需要在作者的 Discord 频道获取（README 中有 Discord 邀请链接 `discord.gg/eY2Y5p2PEp`）。
- 工作原理：Cordycep 通过“补丁化”游戏可执行文件，利用游戏自身代码加载数据，从而绕过现代作品的严格反作弊，为其他工具提供资产表与字符串表。
- 原作者为 Scobalula，现主要由 dest1yo 维护。

### Saluki（资产导出器）

- 仓库：<https://github.com/echo000/saluki-releases>（在 Releases 页面下载）
- Saluki 是 Greyhound 的继任者，使用 Rust 重写，支持从 COD1 到 BO7 的所有 PC 版 IW 引擎游戏。
- 功能：导出模型（.cast）、贴图、动画、音效；内置模型 / 贴图 / 音频预览（选中资产按 `P` 预览）。
- 支持程序与哈希包自动更新。
- 对于使用 Ricochet 反作弊的作品（MW2019 及以后），**必须通过 Cordycep 才能提取**。

::: tip OBS 用户注意
如果安装了 OBS，请确保更新到最新版本，旧版本会导致 Saluki 的 Vulkan 渲染出现问题。
:::

## 三、模型与动画工具

### Blender + Cast 插件 + Blender Source Tools

1. **Blender**：去 <https://www.blender.org> 下载最新稳定版。
2. **Cast 插件**：<https://github.com/dtzxporter/cast> —— Cast 是 DTZxPorter 设计的开源模型/动画容器格式，Saluki 导出的模型和动画都是 `.cast` 文件。在 Releases 中下载 Blender 插件（`io_scene_cast`），在 Blender 的 `编辑 → 偏好设置 → 插件 → 安装` 中装入。
3. **Blender Source Tools**：用于把模型导出为 Source 引擎的 SMD/DMX 格式，并能在 Blender 中导入/导出 SMD。

### ModelMerger（部件合并）

- MW2019 之后的武器会被拆成 **机匣（receiver）、枪管（barrel）、弹匣（mag）、握把（pistolgrip）、枪托（stock）** 等独立部件（为了支持枪匠系统自由组装）。
- 用 **ModelMerger**（echo000 的 Cast 分支版本）可以把多个 `.cast` 部件合成一把完整的枪，方便在 Alchemist 和 Blender 中使用。

### Alchemist（IK / Additive 动画烘焙）

- 仓库：<https://github.com/Scobalula/Alchemist>
- 用途：把 COD 现代作品中的 **IK 动画**（手部贴合握把）和 **Additive 叠加动画**（冲刺、滑铲等）烘焙成 Source 引擎可用的单一动画。
- 详细使用方法见[动画处理章节](/guide/animations)，官方图文教程：[gscode wiki](https://wiki.gscode.net/docs/software/alchemist/alchemist-usage)。

## 四、贴图工具

### GameImageUtil (GIU)

- 仓库：<https://github.com/Scobalula/GameImageUtil>（Releases 下载）
- 系统要求：Windows 10 x64+，安装 **VS2019 运行库** 与 **.NET Framework 4.7.2**。
- 用途：COD 的贴图经过加密与通道打包（如法线+光泽+AO 合成一张 NOG 图），GIU 负责把它们拆解成常规的颜色 / 法线 / 粗糙度 / 金属度 / AO 贴图。
- 使用方式：选择模式与输出格式，**直接拖放图片**即可批量处理。

### MWBMat（cyan 修改版）

- 仓库：<https://github.com/qwqcyanine/mwb-materials_cyan_edit>
- 用途：读取处理好的贴图文件夹，自动用 Source 引擎的 Phong 着色器**模拟 PBR 效果**，一键生成 `.vtf` 贴图与 `.vmt` 材质。
- 详细命名规则与用法见[贴图处理章节](/guide/textures)。

### 可选：VTFEdit

- <https://nemstools.github.io> —— 手动查看/编辑 VTF 贴图时使用，不是必需的。

## 五、编译工具

### Crowbar

- 仓库：<https://github.com/ZeqMacaw/Crowbar>，官网（Steam 组）：<https://steamcommunity.com/groups/CrowbarTool>
- 用途：把 `QC + SMD/DMX` 编译为 `.mdl`，也可以反编译现有 `.mdl`、解包 addon。
- **重要**：编译时需要选择一个游戏的 **StudioMDL**：
  - 推荐 **CS:GO**（需要 Prime 才能下载 Authoring Tools）或 **SFM (Source Filmmaker)** 的 StudioMDL —— 它们支持更多骨骼（128 上限）与现代特性；
  - Gmod 自带的 StudioMDL 较老，骨骼多的视模可能编译失败；
  - 也支持 Cra0kalo 等修改版编译器。

## 六、开发辅助

| 软件 | 用途 |
| --- | --- |
| **VS Code / Notepad++** | 编辑 QC、VMT、Lua（需要语法高亮） |
| **HLMV**（Crowbar 自带可启动） | 预览编译好的模型、检查材质与动画 |
| **Garry's Mod** 本体 | 最终测试 |

## 七、资料收藏（书签建议）

| 资料 | 链接 |
| --- | --- |
| QC 命令官方维基 | <https://developer.valvesoftware.com/wiki/Category:QC_commands> |
| SMD 格式官方维基 | <https://developer.valvesoftware.com/wiki/SMD> |
| Alchemist 使用教程 | <https://wiki.gscode.net/docs/software/alchemist/alchemist-usage> |
| COD 解包教程（dest1yo） | <https://dest1yo.github.io/cod-extract-wiki/quickstart/cod_hq_games/> |
| COD HQ 武器内部代码数据库 | [Google Sheets](https://docs.google.com/spreadsheets/d/10BwA8Ia-SlnaZgDFLXjdP9AfG9h7ZsWtuVdofTakxHQ/edit?pli=1&gid=1550317937#gid=1550317937) |
| MWBase 套皮指南（Steam） | <https://steamcommunity.com/sharedfiles/filedetails/?id=2935134046> |
| MW 公开源文件示例 | <https://github.com/One-Trick-Viper/Source-Files-MW-Public/> |

## 安装检查清单

- [ ] 游戏本体已安装且**当前未在运行**
- [ ] Cordycep（Discord 最新版）解压完成
- [ ] Saluki 解压完成，能正常启动
- [ ] Blender + Cast 插件 + Blender Source Tools 安装完成
- [ ] GIU、MWBMat、Alchemist、Crowbar 解压到固定目录（如 `D:\cod_tool\`）
- [ ] CS:GO 或 SFM 已安装（提供 StudioMDL）
- [ ] VS Code 等文本编辑器就绪

全部完成后，进入下一章：[① 解包游戏](/guide/unpacking)。
