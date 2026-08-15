# ⑦ 打包 Addon 与 MWBase 套皮

模型编译完成后，最后一步是组织成 Gmod addon，并用 **Modern Warfare Base（MWBase）** 把模型变成一把真正可用的武器。

> 本章的套皮流程整理自 Steam 指南 [MW Sweps Creation Guide](https://steamcommunity.com/sharedfiles/filedetails/?id=2935134046)（by bombs over swaghdad 等）。

## 什么是“套皮”（动画套用）

MWBase 已经做好了武器的全部逻辑（射击、换弹、配件、瞄准）。所谓套皮：

1. 找到一把**形状相近**的现成 MW 武器（动画来源枪），反编译得到它的 QC、动画 SMD 与骨架；
2. 把你的新枪模型**绑定到它的骨架上**（见[模型章节](/guide/models#绑定-rigging-你的武器)）；
3. 沿用它的 QC 动画段落，只替换模型 SMD 与材质；
4. 写一份新的 Lua 武器定义指向你的模型。

两把枪**形状越接近，动画穿帮越少**（动画微调属于进阶内容）。

## Addon 目录结构

在 `garrysmod/addons/` 下新建一个文件夹（名字随意），结构如下：

```
garrysmod/addons/my_mw_weapon/
  lua/
    weapons/            ← 武器 Lua（MWBase 武器定义）
  models/
    weapons/rtx/galil/  ← 与 $modelname 对应，放 .mdl/.vvd/.vtx/.phy
  materials/
    weapons/rtx/galil/  ← 与 $cdmaterials 对应，放 .vmt/.vtf
  sound/                ← 自定义音效（可选，结构随意）
```

对应关系示例：

| QC 中的声明 | 文件实际位置 |
| --- | --- |
| `$modelname "weapons/rtx/galil/v_galil.mdl"` | `models/weapons/rtx/galil/v_galil.mdl` |
| `$cdmaterials "weapons/rtx/galil/"` | `materials/weapons/rtx/galil/*.vmt/.vtf` |

::: tip
模型与材质的目录结构保持一致（都叫 `weapons/rtx/galil`）会让管理清晰很多。
:::

## 材质文件就位

把 [MWBMat](/guide/textures) 生成的 VMT/VTF 复制进 `materials/` 对应目录，并确认：

- VMT 中的 `$basetexture` / `$bumpmap` / `$phongexponenttexture` 路径前缀与 `$cdmaterials` 一致（如 `"weapons/rtx/galil/galilsar_rgb"`）；
- VTF 文件名与 VMT 引用一致（MWBMat 输出的 VTF 可能沿用文件夹名，需要重命名）。

## 音效

1. Saluki 导出的武器音效（`.wav`）放进 `sound/` 目录（子目录随意）；
2. 在 Lua 中用 `sound.Add()` 注册音效脚本名——**名字必须与 QC 中 `{ event 5004 ... }` 引用的名称一致**（如 `wfoly_plr_pi_golf17_reload_01`）；
3. MWBase 会在动画播放到对应帧时触发这些音效。

## Lua 武器定义（MWBase）

在 `lua/weapons/` 下新建武器的 Lua 文件，基于 MWBase 的模板修改：

- 指向你的视模（`v_xxx.mdl`）与世界模型（`w_xxx.mdl`）；
- 配置伤害、射速、弹匣容量等参数；
- 配置配件表（对应 QC 的 bodygroup 与 attachment 名）；
- 注册音效表（对应 `5004` 事件名）。

::: info
Steam 指南的 Lua 章节尚未写完，最实用的参考是 **MWBase 自带武器的 Lua 文件** 与 [One-Trick-Viper 的公开源文件](https://github.com/One-Trick-Viper/Source-Files-MW-Public/)——照抄结构，改路径与参数。
:::

## 骨骼与 Bonemerge 配件的位置修正

MWBase 通过 **bonemerge**（把配件模型合并到主武器同名骨骼上）安装配件；枪口焰、抛壳也依赖骨骼位置。套皮时这些位置经常对不上（错位/穿插），需要手工修：

1. 原理见 [QC 章节的 $definebone 技巧](/guide/qc#用-definebone-修正挂点-特效位置-重要技巧)：`$definebone` 的第二组数值是**可编辑的补偿值**；
2. 在 Blender 里 Pose Mode 下把挂点骨骼移到正确位置，`N` 面板读出 Location/Rotation；
3. 填进 QC 的第二组数字，重新编译；
4. 枪口焰用 `tag_flash`（attachment `muzzle`），抛壳用 `tag_brass`（attachment `shell_eject`），如法炮制。

## 测试与发布

1. 启动 Gmod，在武器菜单找到你的武器；
2. 全面测试：掏出/收起、开火、换弹（普通/空仓）、冲刺、瞄准、配件装卸、音效时机；
3. 用 Gmod 自带的 `gmad.exe` 打包为 `.gma`，`gmpublish.exe` 上传创意工坊（可选）。

::: warning 发布注意
创意工坊发布提取自 COD 的模型存在版权风险（可能被 DMCA 下架）。建议仅作个人学习使用，或发布前充分了解社区先例。
:::

---

遇到问题？[常见问题与排错](/guide/troubleshooting)
