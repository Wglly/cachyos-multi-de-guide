#!/bin/bash
set -e

echo "==> 安装 KDE Plasma..."
sudo pacman -S plasma-meta kde-applications-meta
sudo systemctl enable --now sddm

echo "==> 安装 Caelestia Shell (KDE 移植版)..."
curl -fsSL https://raw.githubusercontent.com/ladybug-me/caelestia-dots-kde/main/install.sh | sh

echo "==> 安装输入法..."
sudo pacman -S --needed fcitx5 fcitx5-chinese-addons fcitx5-configtool

echo "==> 安装常用应用..."
sudo pacman -S --needed firefox dolphin konsole kate

echo "==> KDE 安装完成，请注销后选择 Plasma 会话。"
