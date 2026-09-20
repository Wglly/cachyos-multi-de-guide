#!/bin/bash
set -e

echo "==> 安装 fcitx5 及中文输入法..."
sudo pacman -S --needed fcitx5 fcitx5-chinese-addons fcitx5-configtool

echo "==> 配置环境变量..."
mkdir -p ~/.config/environment.d
cat > ~/.config/environment.d/fcitx.conf << 'EOF'
GTK_IM_MODULE=fcitx
QT_IM_MODULE=fcitx
XMODIFIERS=@im=fcitx
EOF

echo "==> 环境变量已写入 ~/.config/environment.d/fcitx.conf"
echo "==> 请注销重新登录，然后运行 fcitx5-configtool 添加输入法。"
