# ③ 贴图处理（GIU + MWBMat）

COD 的贴图并不是直接可用的 PNG/TGA——它们经过**加密与通道打包**（例如把法线、光泽度、环境光遮蔽塞进同一张图）。本章流程：

```
Saluki 导出的加密贴图
   │  ① GameImageUtil (GIU) 拆通道/解密
   ▼
常规贴图（颜色/法线/粗糙度/金属度/AO）
   │  ② 按规则重命名
   ▼
③ MWBMat 一键生成 VTF + VMT（仿 PBR）
   │
   ▼
放入 Gmod addon 的 materials/ 目录
```

## 第一步：用 GIU 处理加密贴图

[GameImageUtil](https://github.com/Scobalula/GameImageUtil) 的使用非常简单：**选好模式和输出格式，把图片拖进去**。

与 MW2019+ 武器最相关的模式：

| 模式 | 说明 |
| --- | --- |
| **Automatic** | 根据文件名自动判断模式（已对 MW2019 / IW / Cast 测试），通常直接用它 |
| **Cast Files** | 把哈希命名的贴图按“材质名+槽位”重命名，匹配 Cast 插件的行为 |
| **CoD Normal/Gloss/Occlusion (IW/MW)** | 拆分 MW2019/IW 的 **NOG/NG 打包图**（法线+光泽+AO 三合），并把**半球八面体法线**正确转换为标准切线空间法线 |
| **XY Normal Map (BC5 灰/黄图)** | 只有 XY 两个通道的法线图（“黄图/灰图”），自动计算 Z（B 通道）补全 |
| **CoD Spec/Gloss (RGB/A)** | 拆分高光颜色图 + 光泽图 |
| **CoD Specular/Albedo (IW/MW)** | 拆分融合的高光/颜色图（用 alpha 通道做遮罩） |
| **Direct Convert** | 只做格式转换 |
| **Split All Channels / Split Color/Alpha / Merge RGB/Alpha** | 通用通道拆分与合并 |

::: tip
- 一次可以拖入大量贴图批量处理。GIU 默认使用全部 CPU 线程，内存占用会随之上升。
- 处理后建议统一输出为 **PNG**（下一步 MWBMat 需要常规格式）。
:::

## 第二步：按 MWBMat 规则整理贴图

[MWBMat（cyan 修改版）](https://github.com/qwqcyanine/mwb-materials_cyan_edit) 用 Source 引擎的 Phong 着色器模拟 PBR 效果。它通过**文件夹 + 文件后缀**识别贴图：

1. 新建一个文件夹，**文件夹名 = 最终生成的 VMT 名称**（例如 `x123_rec`）；
2. 把贴图放进文件夹，并按后缀重命名：

| 后缀 | 贴图类型 | 说明 |
| --- | --- | --- |
| `_rgb` / `_rgbm` / `_s~` / `_c` | 颜色图（Albedo） | 基础色 |
| `_n` | 法线图（Normal） | 产生凹凸感 |
| `_r` / `_g` | 粗糙度 / 光泽度 | 控制反光强度，`_r` 会被自动反转 |
| `_m` / `_alpha` | 金属度 | 控制金属反光区域 |
| `_o` / `_ao` | 环境光遮蔽（AO） | 产生缝隙阴影 |
| `_e` | 自发光 | 越亮越发光的部位（纯黑不发光） |
| `_t` | 透明剪切遮罩 | 对应 `$alphatest`（白=不透明） |
| `_opacity` | 半透明遮罩 | 对应 `$translucent` |
| `_orm` / `_rma` / `_mrao` | 打包的 ORM/RMA/MRAO 图 | 自动拆通道 |
| `_nog` / `packed_ng` / `_n&` / `_g~` | COD NOG/NG 打包图 | MWBMat 也能直接吃 |

::: warning 注意
- 所有贴图都是**可选**的——工具用找到的几张就能工作；
- 支持 PNG / JPG / TGA / DDS（DXT1-5、BC1-3、BC4、BC5、BC7 与无压缩 RGB/RGBA）；**不支持** BC6H、R16F、R32F 等 HDR/浮点 DDS；
- 存在透明遮罩时，基础色 alpha 会转为透明度（不再承担金属度），`$blendtintbybasealpha` 会被禁用；
- 贴图所在路径**不要有空格**，否则工具找不到输出位置。
:::

## 第三步：生成 VTF + VMT

1. 打开 MWBMat，点 **Open Folder(s)** 选择刚才的文件夹；
2. 默认设置即可；如果你的法线图是 OpenGL 格式（绿通道方向相反），勾选设置里的 **OpenGL normal** 自动翻转（Source 引擎使用 DirectX 法线，详见下文）；
3. 批量处理：选择一个根目录可以处理其下所有贴图文件夹，也可以勾选“在输出目录中创建相同的文件夹结构”；
4. 完成后在 `output` 文件夹得到 `.vtf` 与 `.vmt`。

### Envmap（环境反射贴图）

MWBMat 内置了几个 envmap 用于生成准确的粗糙度反射：

- 默认会为每个 VMT 生成一张 envmap 贴图；
- 也可以指定一个共享文件夹（必须位于游戏 materials 目录内），多把武器共用，省体积；
- 所需贴图在工具的 `envmaps` 文件夹里，**不要改文件名**。

## 第四步：修正 VMT 路径

MWBMat 生成的 VMT 里贴图路径是相对名，需要加上你在 QC 中写的 `$cdmaterials` 路径：

```
// 生成时
$basetexture "x123_rec_rgb"

// 改成（与 QC 的 $cdmaterials "mw2/x123/" 对应）
$basetexture "mw2/x123/x123_rec_rgb"
$bumpmap "mw2/x123/x123_rec_n"
$phongexponenttexture "mw2/x123/x123_rec_e"
```

需要修改的键一般包括 `$basetexture`、`$bumpmap`、`$phongexponenttexture`（以及 envmap 相关）。

## DirectX 与 OpenGL 法线图的区别

Source 引擎使用 **DirectX 法线**。两者的差别在**绿通道（Y 轴）方向相反**：

- 以 M4 机匣上的铭文为例，它是**凹进去**的：OpenGL 法线看起来也是凹的；DirectX 法线看起来会“凸出来”（因为光照方向相反）；
- 如果你的贴图是 OpenGL 法线：要么在 Photoshop 中**反转绿通道**，要么在 MWBMat 设置里勾选 **OpenGL normal** 让工具自动处理。

## 已知限制与技巧

- 想获得最佳效果，应把网格按材质拆分，**金属部件单独用一份 VMT**；
- Phong albedo boost 只在 CS:GO 和 Gmod 可用，其他游戏用普通 phong boost；
- Phong 指数贴图做不到“全镜面”效果（指数上限 150，仍然偏散）；
- 每个引擎的 PBR 实现不同，最终效果与参考图有差异是正常的——工具在使用 Substance / Sketchfab / Maya / 3ds Max 标准流程的资产上最准确；
- **生成后经常需要手动微调 VMT 参数**（phong 强度、envmap 强度等），在 HLMV 里边看边调。

---

下一步：[④ 动画处理（Alchemist IK/Additive）](/guide/animations)
