# CachyOS 安装后基础配置

## 1. 更新系统

```bash
sudo pacman -Syu

2. 安装常用工具
sudo pacman -S --needed base-devel git wget curl vim

3. 显卡驱动
NVIDIA：sudo pacman -S nvidia-open-dkms nvidia-utils
Intel：sudo pacman -S mesa intel-media-driver
双显卡：安装 nvidia-prime 并在需要时用 prime-run 启动程序

4. 输入法
sudo pacman -S fcitx5 fcitx5-chinese-addons fcitx5-configtool

在 ~/.config/environment.d/fcitx.conf 中添加：
text
GTK_IM_MODULE=fcitx
QT_IM_MODULE=fcitx
XMODIFIERS=@im=fcitx

5. AUR 助手

sudo pacman -S --needed base-devel
git clone https://aur.archlinux.org/paru.git
cd paru && makepkg -si

6. 启用 multilib 仓库（如需 32 位支持）
编辑 /etc/pacman.conf，取消 [multilib] 注释，然后 sudo pacman -Syu
