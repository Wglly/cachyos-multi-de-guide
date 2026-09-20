#!/bin/bash
set -e

echo "==> 安装 Niri 及基础依赖..."
sudo pacman -S --needed niri kitty fish fcitx5 fcitx5-chinese-addons \
    waybar fuzzel mako grim slurp wl-clipboard

echo "==> 安装常用软件..."
sudo pacman -S --needed firefox fastfetch btop neovim git

echo "==> 部署配置文件..."
mkdir -p ~/.config/niri
cp -r config/niri/* ~/.config/niri/
cp -r config/kitty ~/.config/
cp -r config/fish ~/.config/
cp -r config/fastfetch ~/.config/

echo "==> Niri 安装完成，请注销后选择 Niri 会话登录。"
