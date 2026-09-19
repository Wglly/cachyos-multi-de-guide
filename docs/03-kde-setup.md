# KDE Plasma 安装与配置

## 安装

```bash
sudo pacman -S plasma-meta kde-applications-meta
sudo systemctl enable --now sddm

重启后在 SDDM 选择 Plasma 会话。

基础配置

1. 中文输入法

sudo pacman -S fcitx5 fcitx5-chinese-addons fcitx5-configtool

2. 主题与图标
系统设置 → 外观 → 全局主题

图标：sudo pacman -S papirus-icon-theme

3. 常用应用
sudo pacman -S firefox dolphin konsole kate

4. 与 GNOME / Hyprland 共存
不建议同时登录多个桌面。

若共存，登录时选择正确会话，注意 portal 后端冲突。
