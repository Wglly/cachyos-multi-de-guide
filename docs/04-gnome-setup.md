# GNOME 安装与配置

## 安装

```bash
sudo pacman -S gnome
sudo systemctl enable --now gdm

重启后在 GDM 选择 GNOME 会话。

基础配置
1. 中文输入法

sudo pacman -S fcitx5 fcitx5-chinese-addons
GNOME 设置 → 键盘 → 输入源中添加 Fcitx5。

2. 扩展与主题

sudo pacman -S gnome-shell-extensions gnome-themes-extra
推荐扩展：Dash to Dock、Blur my Shell、Just Perfection。

3. 常用应用

sudo pacman -S firefox nautilus gnome-terminal gedit

4. 与 KDE / Hyprland 共存
GNOME 使用 GDM，KDE 使用 SDDM，建议只启用一个显示管理器。

GNOME 与 Hyprland 共存时注意 xdg-desktop-portal 后端冲突。
