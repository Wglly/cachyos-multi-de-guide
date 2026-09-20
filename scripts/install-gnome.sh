#!/bin/bash
set -e

echo "==> 安装 GNOME..."
sudo pacman -S --needed gnome

echo "==> 启用 GDM..."
sudo systemctl enable --now gdm

echo "==> 安装扩展和主题..."
sudo pacman -S --needed gnome-shell-extensions gnome-themes-extra

echo "==> 安装输入法..."
sudo pacman -S --needed fcitx5 fcitx5-chinese-addons

echo "==> GNOME 安装完成，请注销后选择 GNOME 会话。"
