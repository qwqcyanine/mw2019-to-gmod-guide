# 教程总览

本教程讲解如何将从 **使命召唤16：现代战争（MW2019，引擎代号 IW8）** 开始的历代 COD 作品中的武器，完整提取并导入到 **Garry's Mod（Gmod）** 中，最终做成可以在游戏里使用的武器（通常配合 **Modern Warfare Base / MWBase** 这类武器基座）。

## 适用范围

以下作品的资源提取流程基本一致（差异主要在解包环节）：

| 作品 | 引擎代号 | 说明 |
| --- | --- | --- |
| COD16 现代战争 (2019) | IW8 | 本教程的主线示例 |
| COD17 冷战 | T9 | 动画体系略有不同 |
| COD18 先锋 | IW8 系 | 与 MW2019 基本相同 |
| COD19 现代战争II (2022) | IW9 | 与 MW2019 基本相同 |
| COD20 现代战争III (2023) | IW9 | 与 COD19 基本相同 |
| COD21 黑色行动6 / BO7 | COD HQ | 需要 Cordycep 的新版 dump 流程 |

::: warning 版权与风险声明
- 游戏素材版权归 **Activision** 所有，本教程仅供学习交流，提取的素材**不要用于商业用途**。
- 解包工具本身不修改游戏、不破坏反作弊，但任何操作都有未知风险。请严格按照[解包章节](/guide/unpacking)中的断网操作流程执行，**切勿在游戏或平台运行时进行 dump**。
:::

## 全流程管线

整个流程可以理解为一条流水线，每一步都有专门的工具负责：

```
游戏文件 (COD HQ / IW8 / IW9)
   │
   ▼
┌─────────────┐   加载游戏资产    ┌──────────┐
│  Cordycep   │ ───────────────▶ │  Saluki  │  提取 .cast 模型 / 动画 / 加密贴图
└─────────────┘                  └──────────┘
                                        │
        ┌───────────────────────────────┼───────────────────────────┐
        ▼                               ▼                           ▼
┌───────────────┐              ┌────────────────┐          ┌────────────────┐
│ Blender + Cast │ 模型/动画    │ GameImageUtil  │ 拆通道   │   Alchemist    │ IK/Additive
│ 插件           │ 转 SMD       │ (GIU)          │ ───────▶ │  烘焙动画       │ 烘焙
└───────────────┘              └────────────────┘          └────────────────┘
        │                               │                           │
        │                               ▼                           │
        │                      ┌────────────────┐                   │
        │                      │    MWBMat      │ 生成 VTF + VMT     │
        │                      └────────────────┘                   │
        ▼                               │                           ▼
┌────────────────────────────────────────────────────────────────────┐
│                    编写 QC → Crowbar (StudioMDL) 编译 .mdl           │
└────────────────────────────────────────────────────────────────────┘
                                │
                                ▼
              ┌──────────────────────────────────┐
              │  Gmod addon 目录 + MWBase 套皮 Lua │
              └──────────────────────────────────┘
```

## 工具链一览

| 工具 | 作用 | 获取方式 |
| --- | --- | --- |
| **Cordycep** | 解包/加载游戏资产（GitHub 已停更，最新版在 Discord） | [GitHub](https://github.com/Scobalula/Cordycep) |
| **Saluki** | 读取 Cordycep 的内容并导出模型、贴图、动画 | [GitHub](https://github.com/echo000/saluki-releases) |
| **Cast** | 模型/动画的导出导入格式（含 Blender/Maya 插件） | [GitHub](https://github.com/dtzxporter/cast) |
| **GameImageUtil (GIU)** | 处理 COD 加密/打包贴图（拆通道、转法线等） | [GitHub](https://github.com/Scobalula/GameImageUtil) |
| **MWBMat** | 把 GIU 处理后的贴图生成 Source 引擎的 VTF + VMT | [GitHub (cyan 修改版)](https://github.com/qwqcyanine/mwb-materials_cyan_edit) |
| **Alchemist** | 烘焙 COD 的 IK / Additive 动画 | [GitHub](https://github.com/Scobalula/Alchemist) |
| **Crowbar** | 把 SMD/DMX + QC 编译为 Source 引擎 MDL（也可反编译） | [GitHub](https://github.com/ZeqMacaw/Crowbar) |
| **Blender + Blender Source Tools** | 模型编辑、骨骼绑定、导出 SMD | [Steam 评测页](https://steamreview.org/BlenderSourceTools) |

## 示例参考文件

学习过程中强烈建议对照现成的成品源文件：

- **COD16 → Gmod 官方示例**：[One-Trick-Viper/Source-Files-MW-Public](https://github.com/One-Trick-Viper/Source-Files-MW-Public/) —— MW SWEPS 的公开源文件
- **COD19/20 → Gmod 第三方示例**：本教程分析的 `x123`（手枪）与 `sr25`（射手步枪）两个完整案例，其 QC 文件已收录在[示例 QC 文件](/reference/qc-examples)页面，可直接下载对照

## 学习路线建议

1. 先通读一遍[环境与工具准备](/guide/preparation)，把软件全部装好；
2. 按章节顺序操作：解包 → 模型 → 贴图 → 动画 → QC → 编译 → 导入；
3. 遇到 QC 命令不懂时查 [Valve 开发者维基 QC 命令分类](https://developer.valvesoftware.com/wiki/Category:QC_commands) 和 [SMD 格式文档](https://developer.valvesoftware.com/wiki/SMD)；
4. 本站的[在线编辑器](/editor.html)可以在网页内撰写、修订教程内容并插入图片占位，适合边做边记笔记。

::: tip 关于本教程的编辑
本站支持网页内编辑：打开导航栏的 **在线编辑器**，即可在浏览器里编写 Markdown、插入图片占位、导入导出 `.md` 文件。写好的内容保存到 `docs/` 目录对应文件即可更新站点。
:::
