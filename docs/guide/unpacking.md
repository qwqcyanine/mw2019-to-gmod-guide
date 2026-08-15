# ① 解包游戏（Cordycep + Saluki）

本章讲解如何用 **Cordycep** 加载游戏资产，再用 **Saluki** 把武器模型、贴图、动画导出为可用的文件。

> 本章内容基于 dest1yo 的 [CoD Extract Wiki](https://dest1yo.github.io/cod-extract-wiki/quickstart/cod_hq_games/) 与 Saluki 官方说明整理。

## 风险须知（务必先读）

::: danger 重要
- 开发者从未因开发或使用这些工具被封号，**前提是严格遵循正确的 dump 流程、且工具运行时游戏与平台处于关闭状态**。
- 我们不做外挂、不破坏游戏，仅将素材用于社区创作，风险接近于零；但无法保证绝对安全，请自行斟酌。
- **游戏大版本更新（赛季更新）可能让工具暂时失效**，需要等待适配。担心的话可以：暂时不更新游戏 / 提前备份游戏文件。
:::

## 第一步：获取并运行 Cordycep

1. Cordycep 的 GitHub 仓库（<https://github.com/Scobalula/Cordycep>）**不再同步更新**，请到 Discord 频道（README 顶部横幅链接）下载最新版。
2. 解压后运行 `Cordycep.exe`，等待它完成联网验证。**验证完成后就不需要再挂着 Discord 了**。

## 第二步：Dump 游戏

::: danger 必须断网操作
1. **关闭游戏和游戏平台**（Steam / Battle.net / Xbox 应用完全退出）；
2. **断开电脑网络**；
3. 在 Cordycep 中输入 dump 命令（路径改成你的实际路径）：
   - BO6：`dump "path\to\cod24\cod24-cod.exe"`
   - BO6 战役：`dump "path\to\sp24\sp24-cod.exe"`
   - BO7 Beta：`dump "path\to\cod25\cod25-cod.exe"`
   - BO7：`dump "path\to\cod.exe"`
   - MW2019 / MWII / MWIII 同理，指向对应的 exe
4. Dump 成功后即可恢复联网。
:::

::: tip
Dump **不需要每次都做**。只有两种情况要重新 dump：① 游戏更新了；② 你从未 dump 过这个游戏。
:::

## 第三步：配置并启动游戏加载

1. 打开 `Cordycep/Run` 文件夹，找到对应游戏的 bat（如 `RunBO6.bat`、`RunBO7.bat` 等；MW2019/MWII/MWIII 有各自的 bat）；
2. 用文本编辑器打开，把游戏目录路径改成你的 **COD HQ 主目录**：

| 平台 | 路径示例 |
| --- | --- |
| Steam | `"D:\SteamLibrary\steamapps\common\Call of Duty HQ"` |
| Battle.net | `"D:\Call of Duty\_retail_"` |
| Xbox Game Pass | `"D:\XboxGames\Call of Duty\Content"` |

::: warning 路径注意事项
- 路径**不要包含** `cod24`、`sp24`、`cod25` 这类子游戏文件夹；
- 路径**不能以反斜杠 `\` 结尾**；
- 路径必须恰好用**一对**英文双引号包住，不能不加也不能加两对。
:::

3. 保存后双击 bat 启动 Cordycep 加载游戏。之后只要游戏没更新，直接运行 bat 即可。

## 第四步：加载资产

- 在 Cordycep 命令行中输入 `help` 可以查看 `load` 系列命令的用法。
- 如果内存充足（BO6 需要 20GB+，BO7 Beta 约 4GB+），直接输入 `loadall` 加载全部游戏文件最省事。
- 可以把 Cordycep 想象成“正在运行的游戏”——**Saluki 提取资产时，Cordycep 必须保持运行并已加载所需资产**。

## 第五步：用 Saluki 提取武器

1. 启动 Saluki，连接上运行中的 Cordycep；
2. **找到目标武器的内部代号**：
   - 查询 [COD HQ 武器内部代码数据库](https://docs.google.com/spreadsheets/d/10BwA8Ia-SlnaZgDFLXjdP9AfG9h7ZsWtuVdofTakxHQ/edit?pli=1&gid=1550317937#gid=1550317937)（Google Sheets）；
   - 或去 COD Fandom 维基查该武器页面；
   - 或在 Saluki 中按 `P` 用内置模型预览逐个翻看武器。
   
   例如：MW2019 的 X13 手枪代号是 `golf17`，其视模模型名形如 `vm_p24_pi_golf17`（`vm_` = 视模，`pi` = pistol，配件则以 `att_vm_` 开头）。
3. 导出内容建议：
   - **模型**：武器的 receiver / barrel / mag / grip / stock 等全部部件（`.cast`）；
   - **动画**：**全部**武器动画都导出——你此时还不确定需要哪些，导出为 `.cast`；
   - **animpackage 文件**（MW2019 / 先锋及更新作品可导出）：它列出了武器使用的所有动画，能帮你找到复用的手部姿势动画；
   - **贴图**：武器对应的全部贴图（此时还是加密/打包格式，下一章处理）；
   - **音效**：如果做完整的武器包，可以一并导出（`.wav` 等）。
4. 建议的本地目录组织（与社区习惯一致）：

```
D:\cod_tool\
  0.mw2_x123_se\          ← 一把武器一个文件夹（x123 = MWII X13 Auto）
    0.bar\                ← 枪管配件（含 QC 与 SMD）
    0.mag\                ← 弹匣配件
    0.wm\                 ← 世界模型（w_ 模型 + 物理 + $bonemerge）
    anims\                ← 处理中的动画 SMD
    x123_smd\             ← 武器本体的动画 SMD
    事件\                 ← 从动画提取的 notetrack 事件（声音/IK 开关）
    v_x123.qc             ← 视模 QC
```

## 常见问题

**Q：Saluki 提取没反应？**
确认 Cordycep 正在运行、且已经 `load` 了对应资产包。可以把 Cordycep 当成游戏本体，Saluki 只是读取它。

**Q：游戏更新后工具失效？**
等工具适配；重新 dump。提取问题可去 Discord 的反馈论坛发帖，附上操作过程、游戏名、资产名、日志（Saluki 的日志在 `%appdata%/saluki/config`）。

**Q：OBS 导致 Saluki 显示异常？**
更新 OBS 到最新版本（旧版与 Vulkan 冲突）。

---

下一步：[② 模型处理（Cast / Blender / SMD）](/guide/models)
