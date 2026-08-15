# ⑥ Crowbar 编译模型

[Crowbar](https://github.com/ZeqMacaw/Crowbar) 是 GoldSource / Source 引擎的编译与反编译工具。本章讲解如何用它把 QC + SMD 编译成 Gmod 可用的 `.mdl`。

> 官方主页（Steam 组）：<https://steamcommunity.com/groups/CrowbarTool>（分享 Crowbar 时请使用这个链接）

## 选择 StudioMDL（编译器）

编译质量取决于所选游戏的 `studiomdl.exe`：

| 编译器 | 推荐度 | 说明 |
| --- | --- | --- |
| **CS:GO** | ★★★ | 需 Prime 才能装 Authoring Tools；支持 128 骨骼，MW 视模必备 |
| **SFM (Source Filmmaker)** | ★★★ | 免费，骨骼上限同样高 |
| Garry's Mod 自带 | ★ | 版本老旧，骨骼多的视模容易编译失败 |
| Cra0kalo 等修改版 | ★★ | 社区增强版，Crowbar 也支持 |

在 Crowbar 的 **Compile** 选项卡中选好游戏，Crowbar 会自动定位对应的 StudioMDL。

## 编译步骤

1. 打开 Crowbar，切到 **Compile** 选项卡；
2. 把 `.qc` 文件**拖进 Crowbar**（或在 QC input 里选择）；
3. 选择目标游戏（CS:GO / Half-Life 2 / CS:S / Garry's Mod）；
4. 点击 **Compile**；
5. 成功后在 QC 所在目录得到 `compiled` 文件夹（默认设置），里面是 `.mdl` + `.vvd` + `.vtx`（`.dx80.vtx` / `.dx90.vtx` / `.sw.vtx`）+ `.phy`（有碰撞模型时）。

## 编译前的检查清单

- [ ] QC 中所有 SMD 路径都存在（相对 QC 所在目录）
- [ ] `$cdmaterials` 路径与未来 addon 里的 `materials/` 结构一致
- [ ] 所有 `usesequence` 已替换为 `usesource`（见下文）
- [ ] 骨骼总数 ≤ 128（MW 视模骨骼多，老编译器会报错）
- [ ] `$modelname` 路径不含空格与中文

## usesequence → usesource 技巧

反编译现代 MW 武器包的 QC 时，里面可能有 `usesequence` 命令——直接编译会报错。解决办法：

1. 用文本编辑器打开 QC；
2. `Ctrl+H` 把 `usesequence` 全部替换为 `usesource`，保存；
3. 顺带的好处：去掉 `usesequence` 后可以直接编辑动画而不引发错误，目前未发现副作用。

（想了解两者区别，可查 [QC 命令维基](https://developer.valvesoftware.com/wiki/Category:QC_commands)。）

## 反编译（逆向学习）

Crowbar 同样是学习现成武器包的利器：

1. 切到 **Decompile** 选项卡；
2. 把 `.mdl` 拖进去，**Output to** 选 `Subfolder (of MDL input)`；
3. 点 **Decompile**，得到 `decompiled` 文件夹：QC + 全部 SMD + VMT 引用。

Gmod 创意工坊的 addon（`.gma`）也可以用 Crowbar 解包后再反编译。

## 用 HLMV 检查结果

编译后**务必**在 HLMV（Half-Life Model Viewer，Crowbar 可启动对应游戏的版本）中检查：

- 模型是否完整、朝向是否正确；
- **Materials** 选项卡：贴图是否加载（紫色棋盘格 = 材质缺失，检查 `$cdmaterials` 与 VMT 路径）；
- **Sequence** 选项卡：逐个播放动画，检查手部位置、弹匣动作、事件时机；
- **Body Parts** 选项卡：检查 bodygroup 切换是否正常；
- 物理模型（w_ 模型）切到 **Physics** 检查碰撞体。

## 常见编译错误

| 错误 | 原因与解决 |
| --- | --- |
| `ERROR: too many bones` | 骨骼超过编译器上限 → 换 CS:GO/SFM 的 StudioMDL |
| `ERROR: ... .smd not found` | SMD 路径不对 → 检查相对路径与反斜杠 |
| `usesquence/usesequence` 相关报错 | 全部替换成 `usesource` |
| 材质全紫 | `$cdmaterials` 与实际路径不符；VMT 内贴图路径没补全 |
| 模型旋转 90° | SMD 导出时轴向不对 → Blender Source Tools 检查导出设置 |
| 动画手部位置错乱 | 没用 Alchemist 烘焙 IK → 回到[动画章节](/guide/animations) |
| 编译直接闪退 | 看 Crowbar 日志；常见于 QC 语法错误（少引号/括号） |

---

下一步：[⑦ 打包 Addon 与 MWBase 套皮](/guide/gmod-addon)
