#!/bin/bash
set -e

echo "==> 安装 KDE Plasma..."
sudo pacman -S --needed plasma-meta kde-applications-meta

echo "==> 启用 SDDM..."
sudo systemctl enable --now sddm

echo "==> 安装输入法..."
sudo pacman -S --needed fcitx5 fcitx5-chinese-addons fcitx5-configtool

echo "==> 安装常用应用..."
sudo pacman -S --needed firefox dolphin konsole kate

echo "==> KDE 安装完成，请注销后选择 Plasma 会话。"
