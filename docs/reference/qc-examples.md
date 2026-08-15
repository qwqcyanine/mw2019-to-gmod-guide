# 示例 QC 文件

以下示例文件来自两个真实的 COD19/20 → Gmod 武器移植案例（第三方作者），可直接下载对照学习。在浏览器中点击链接即可查看/下载。

## 视模 QC

### v_x123.qc —— X13 Auto 手枪（COD19，`golf17`）

[下载 v_x123.qc](/examples/v_x123.qc)（1857 行）

特点：

- 完整的 `$definebone` 骨骼表（手臂 + 手指 + ValveBiped 映射 + 枪械骨骼）；
- 完整的瞄具/镭射 `$attachment` 组（reflex/holo/scope/acog/hybrid/thermal/laser）；
- 大量 `$animation ... subtract` 混合动画结构（walk/jog/sprint/ADS/firemode）；
- 全部 `$sequence` 携带 notetrack 事件（`5004` 音效、`9011` IK 开关、`9031` 脚本事件）；
- `$bodygroup` 含 `ammo` 组（弹头显示切换）。

### v_sr25.qc —— SR25 射手步枪（COD19，`stango25`）

[下载 v_sr25.qc](/examples/v_sr25.qc)（2023 行）

特点：长枪结构，配件挂点更全（枪管/护木/枪托分组），包含脚架（bipod）、镭射隐藏骨骼（`tag_bipod_hide`、`tag_grip_hide`、`tag_laser_hide`）等进阶用法。

## 世界模型 QC

### mike14_w.qc —— 世界模型模板

[下载 mike14_w.qc](/examples/mike14_w.qc)（98 行）

特点：

- 根骨骼 `ValveBiped.Bip01_R_Hand` + 整组 `$bonemerge`；
- `$attachment "muzzle" "tag_flash"`（世界模型枪口焰）；
- `$collisionmodel` 引用物理 SMD，含 `$mass` 等物理参数。

## 配件 QC

### bar_def.qc —— 枪管配件

[下载 bar_def.qc](/examples/bar_def.qc)（55 行）

特点：根骨骼 `tag_barrel_attach`；`muzzle` / `silencer` attachment 挂在配件上（枪口焰与消音器位置随枪管变化）。

### x123_m_d.qc —— 弹匣配件

[下载 x123_m_d.qc](/examples/x123_m_d.qc)（42 行）

特点：根骨骼 `tag_mag_attach`；包含 `j_mag1`/`j_mag2`/`j_ammo_xx`/`j_follower`（托弹板）等弹匣内部骨骼。

## Notetrack 事件示例

### notetrack_reload_example.txt —— 换弹动画事件

[下载 notetrack_reload_example.txt](/examples/notetrack_reload_example.txt)

从 `vm_p24_pi_golf17_reload` 动画提取的事件列表，直接可改写进 `$sequence` 块：

```
{ event 5004 0 "wfoly_plr_pi_golf17_reload_01" }
{ event 9011 0 "0" }
...
{ event 9011 49 "1" }
```

## 更多参考

- MW SWEPS 官方公开源文件（COD16）：<https://github.com/One-Trick-Viper/Source-Files-MW-Public/>
