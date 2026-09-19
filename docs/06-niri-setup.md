# Niri 配置说明

## 安装 Niri

```bash
sudo pacman -S niri
配置文件位置
Niri 配置文件位于 ~/.config/niri/config.kdl。

本仓库配置结构：

config/niri/
├── config.kdl          # 主配置，通过 include 引入子配置
└── cfg/
    ├── display.kdl     # 显示器和刷新率
    ├── keybinds.kdl    # 快捷键
    ├── input.kdl       # 输入设备
    └── autostart.kdl   # 开机自启

关键配置项

1.显示器刷新率

output "eDP-1" {
    mode 1920x1080@144
    scale 1
}

2.常用快捷键

快捷键	功能
Mod+T	打开终端
Mod+Q	关闭窗口
Mod+Shift+R	重载配置
Mod+Shift+S	区域截图
Mod+Shift+E	退出 Niri

3.开机自启

spawn-at-startup "fcitx5" "-d"
spawn-at-startup "waybar"
