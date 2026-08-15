# 常见问题与排错

按流程阶段整理的常见问题。编译错误请先看 [Crowbar 编译章节](/guide/compiling#常见编译错误)。

## 解包阶段

### Cordycep 验证失败 / 无法启动

- Cordycep 需要联网验证一次，确认网络可达；
- 必须使用 Discord 频道的**最新版**——GitHub 仓库已停更，旧版本可能不支持当前游戏版本。

### Saluki 连不上 / 提取为空

- 确认 Cordycep **正在运行**且已经 `load` / `loadall` 加载了资产；
- 游戏大更新后哈希包可能过期，等 Saluki 自动更新或去 Discord 看公告；
- Saluki 日志在 `%appdata%/saluki/config`，反馈问题时附上。

### 找不到某把武器

- 查[武器内部代码数据库](https://docs.google.com/spreadsheets/d/10BwA8Ia-SlnaZgDFLXjdP9AfG9h7ZsWtuVdofTakxHQ/edit)确认代号；
- 在 Saluki 中选中资产按 `P` 预览模型，逐个排查。

## 模型阶段

### Blender 导入 .cast 失败

- 确认安装的是 Cast 官方 Blender 插件（`io_scene_cast`）且版本匹配 Blender 版本；
- 插件启用后重启 Blender 再试。

### 武器部件位置错乱

- MW2019+ 武器是**分部件**的，先用 ModelMerger 合并再整体导入；
- 单独导入部件时它们会各自位于原点，这是正常的——挂点骨骼会负责定位。

### 导出 SMD 后模型旋转/缩放不对

- 检查 Blender Source Tools 的导出设置（轴向、缩放）；
- 确认应用了网格的变换（`Ctrl+A` → All Transforms）。

## 贴图阶段

### MWBMat 不读取我的贴图

- 贴图格式必须是 PNG/JPG/TGA 或 DDS（DXT1-5、BC1-3、BC4、BC5、BC7、无压缩 RGB/RGBA）；**不支持 BC6H/R16F/R32F**；
- 文件后缀要符合[命名规则](/guide/textures#第二步-按-mwbmat-规则整理贴图)；
- 路径**不能有空格**。

### 法线效果反了（凹凸颠倒）

- Source 用 DirectX 法线。OpenGL 法线请在 MWBMat 设置里勾 **OpenGL normal**，或在 PS 中反转绿通道。

### 金属部分不够亮 / 全枪反光

- 金属度贴图（`_m` / `_alpha`）负责金属区域，检查它是否正确拆出；
- 最佳实践：金属部件单独拆网格、单独 VMT；
- 在 VMT 里手动调 `$phongboost`、`$envmaptint` 等参数。

## 动画阶段

### 手部没有握在枪上 / 手部抖动

- 这是典型的**没做 IK 烘焙**——回 [Alchemist 章节](/guide/animations)；
- 确认 Parts 区手模设为 `ViewHands` 类型、武器 Parent Bone 为 `tag_weapon`；
- 确认左右手姿势动画（`*_pose_l` / `*_pose_r`）设置正确。

### 冲刺/滑铲动画姿势怪异

- 检查 additive **叠加顺序**（offset 在前、动作在后；右手手势在左手之后）；
- `sprint_loop` / `slide_loop` 手部粘枪：取消勾选该条的 **Use Left Hand IK**。

### Alchemist 导出时崩溃

- 崩溃会自动保存；说明项目缺信息——检查 Parts 骨骼、姿势动画、输出路径是否都已设置。

## 编译与游戏内

### 游戏里材质紫黑棋盘格

- `$cdmaterials` 与 `materials/` 实际路径不符；
- VMT 内贴图路径没加目录前缀；
- VTF 文件名与 VMT 引用不一致（MWBMat 输出可能要改名）。

### 游戏内模型是 ERROR

- `.mdl` 路径与 `$modelname` 不一致，或文件没放全（mdl/vvd/vtx/phy 缺一不可）。

### 音效不响

- Lua 中 `sound.Add` 的脚本名与 QC `{ event 5004 ... }` 里的名字不一致；
- 音效文件路径/格式问题（Gmod 用 wav/mp3/ogg）。

### 配件/枪口焰/抛壳位置错位

- 用 [QC 章节的 $definebone 补偿值技巧](/guide/qc#用-definebone-修正挂点-特效位置-重要技巧)修正骨骼位置。

## 求助渠道

- Cordycep / Saluki / GIU / Alchemist 的 Discord 服务器（各仓库 README 有链接）；
- 提问时附上：操作过程、游戏名、资产名、日志、截图——信息越详细越容易得到帮助。
