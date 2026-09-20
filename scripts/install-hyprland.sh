#!/bin/bash
set -e

echo "==> 安装 Hyprland 及依赖..."
sudo pacman -S --needed hyprland kitty waybar fuzzel mako \
    grim slurp wl-clipboard xdg-desktop-portal-hyprland

echo "==> 安装 Serpantinum..."
bash -c "$(curl -fsSL https://raw.githubusercontent.com/ilyamiro/serpantinum/master/install/install.sh)"

echo "==> 部署配置..."
mkdir -p ~/.config/hypr
cp -r config/hyprland/* ~/.config/hypr/

echo "==> 安装输入法..."
sudo pacman -S --needed fcitx5 fcitx5-chinese-addons

echo "==> Hyprland 安装完成，请注销后选择 Hyprland 会话。"
