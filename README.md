# CachyOS 多桌面配置与双系统指南

本仓库记录了 CachyOS（Arch 系）与 Windows 10 双系统的安装步骤，以及 KDE Plasma、GNOME、Hyprland、Niri 四个桌面环境的完整配置方案。

## 📖 文档目录

- [双系统安装指南](docs/01-dualboot-guide.md)
- [CachyOS 安装后配置](docs/02-cachyos-post-install.md)
- [KDE Plasma 配置](docs/03-kde-setup.md)
- [GNOME 配置](docs/04-gnome-setup.md)
- [Hyprland 配置](docs/05-hyprland-setup.md)
- [Niri 配置](docs/06-niri-setup.md)
- [常见问题排查](docs/07-troubleshooting.md)

## 🖥️ 环境

- 系统：CachyOS (Arch Linux)
- 内核：linux-cachyos
- 桌面：KDE / GNOME / Hyprland / Niri
- 终端：Kitty
- Shell：Fish
- 输入法：Fcitx5

## 📁 仓库结构

```bash
cachyos-multi-de-guide/
├── README.md                         # 仓库总览
├── docs/
│   ├── 01-dualboot-guide.md          # Win10 + CachyOS 双系统安装步骤
│   ├── 02-cachyos-post-install.md    # CachyOS 安装后基础配置（驱动、软件源）
│   ├── 03-kde-setup.md               # KDE Plasma 安装与配置
│   ├── 04-gnome-setup.md             # GNOME 安装与配置
│   ├── 05-hyprland-setup.md          # Hyprland 安装与配置
│   ├── 06-niri-setup.md              # Niri 安装与配置
│   └── 07-troubleshooting.md         # 多桌面常见问题（黑屏、输入法、Wayland）
├── scripts/
│   ├── install-kde.sh                # KDE 一键安装
│   ├── install-gnome.sh              # GNOME 一键安装
│   ├── install-hyprland.sh           # Hyprland 一键安装
│   ├── install-niri.sh               # Niri 一键安装
│   └── setup-input-method.sh         # fcitx5 输入法配置
├── config/
│   ├── kde/                          # KDE 配置
│   ├── gnome/                        # GNOME 配置
│   ├── hyprland/                     # Hyprland 配置
│   │   ├── hyprland.conf
│   │   └── hyprland/
│   │       ├── keybinds.conf
│   │       ├── general.conf
│   │       └── execs.conf
│   └── niri/                         # Niri 配置
│       ├── config.kdl
│       └── cfg/
│           ├── display.kdl
│           ├── keybinds.kdl
│           ├── input.kdl
│           └── autostart.kdl
└── assets/
    └── screenshots/                  # 桌面截图（可选）

```

## 部分桌面配置展示

# Niri + Noctalia v5

<img src="assets/screenshots/_cgi-bin_mmwebwx-bin_webwxgetmsgimg &MsgID=8453973726375931509&skey=@crypt_ce908158_3e61d8dd60867472b8a6b76096f01182&mmweb_appid=wx_webfilehelper.jpg" width="500"> <img src="assets/screenshots/_cgi-bin_mmwebwx-bin_webwxgetmsgimg &MsgID=802223754582540481&skey=@crypt_ce908158_3e61d8dd60867472b8a6b76096f01182&mmweb_appid=wx_webfilehelper.jpg" width="500" >

```bash
系统:CachyOS Linux（Arch）[x86/64]
桌面窗口管理器:Niri（Wayland)
桌面管理器:noctalia v5（beta）
终端:kitty
信息显示插件:fastfetch
关于终端生成ASCII字符画的插件:chafa
终端音乐播放器:trix
后台任务监控插件:btm
```

# KDE + Caelestia-shell

<img src="assets/screenshots/_cgi-bin_mmwebwx-bin_webwxgetmsgimg &MsgID=3397339630343486962&skey=@crypt_ce908158_3e61d8dd60867472b8a6b76096f01182&mmweb_appid=wx_webfilehelper.jpg" width="600" >

```bash
系统:CachyOS Linux（Arch）[x86/64]
桌面窗口管理器:KDE Plasma（Wayland)
桌面管理器:Caelestia-shell
终端:kitty
信息显示插件:fastfetch
后台任务监控插件:btm
```

## 🛠️ 快速部署

```bash
git clone git@github.com:你的用户名/cachyos-multi-de-guide.git
cd cachyos-multi-de-guide
chmod +x scripts/*.sh
# 按需选择
./scripts/install-niri.sh
./scripts/install-hyprland.sh
./scripts/install-kde.sh
./scripts/install-gnome.sh
