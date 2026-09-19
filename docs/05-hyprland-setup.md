# Hyprland 安装与配置

## 安装

```bash
sudo pacman -S hyprland kitty waybar fuzzel mako grim slurp wl-clipboard
配置文件位置
Hyprland 配置文件位于 ~/.config/hypr/hyprland.conf。

本仓库配置结构：

config/hyprland/
├── hyprland.conf        # 主配置
├── hyprland/
│   ├── keybinds.conf    # 快捷键
│   ├── general.conf     # 通用设置
│   └── execs.conf       # 开机自启
└── custom/              # 个人覆盖层

关键配置
1.显示器

monitor=eDP-1,1920x1080@144,0x0,1

2.常用快捷键
快捷键	功能
Super+T	打开终端
Super+Q	关闭窗口
Super+R	重载配置
Super+Shift+S	区域截图

3.开机自启

exec-once = waybar
exec-once = fcitx5 -d
exec-once = mako

4.NVIDIA 双显卡注意

env = AQ_DRM_DEVICES,/dev/dri/card0
