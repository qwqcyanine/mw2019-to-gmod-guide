---
layout: home

hero:
  name: MW2019 → Gmod
  text: 武器导入全流程教程
  tagline: 从 COD16（MW2019）及后续作品中提取武器模型、贴图、动画，编译并导入 Garry's Mod
  actions:
    - theme: brand
      text: 开始阅读教程
      link: /guide/
    - theme: alt
      text: 在线编辑器
      link: /editor.html
      target: _blank

features:
  - title: ① 解包提取
    details: 使用 Cordycep 加载游戏、Saluki 提取模型 / 贴图 / 动画（Cast 格式）
  - title: ② 模型转换
    details: Blender + Cast 插件导入模型，ModelMerger 合并部件，导出 Source 引擎 SMD
  - title: ③ 贴图转换
    details: GameImageUtil 拆解加密贴图，MWBMat 一键生成 VTF / VMT 仿 PBR 材质
  - title: ④ 动画烘焙
    details: Alchemist 处理 IK 与 Additive 动画，还原手部握持姿势与冲刺叠加动画
  - title: ⑤ QC 与编译
    details: 编写 QC（bodygroup / attachment / sequence / 事件），用 Crowbar 编译 MDL
  - title: ⑥ 导入 Gmod
    details: 打包 addon 目录结构，配合 MWBase 制作"套皮"武器并发布
---
