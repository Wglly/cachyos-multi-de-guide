## 多桌面共存常见问题

  ```bash
1. 显示管理器冲突

- 现象：同时启用 SDDM 和 GDM，登录界面异常或进入桌面黑屏。
- 解决：只启用一个显示管理器。

  sudo systemctl disable gdm
  sudo systemctl enable sddm
  
2. xdg-desktop-portal 冲突
现象：截图、录屏、文件选择器在某个桌面下失效。
解决：确保每个桌面使用正确的 portal 后端：
GNOME：xdg-desktop-portal-gnome
KDE：xdg-desktop-portal-kde
Hyprland / Niri：xdg-desktop-portal-hyprland 或 xdg-desktop-portal-gtk
检查：systemctl --user status xdg-desktop-portal

3. 默认应用冲突
现象：在 KDE 中设置的默认浏览器，在 GNOME 中不生效。

解决：使用 xdg-settings 为不同桌面分别设置。

4. 输入法不工作
解决：确认该桌面的环境变量已正确设置：

# ~/.config/environment.d/fcitx.conf
GTK_IM_MODULE=fcitx
QT_IM_MODULE=fcitx
XMODIFIERS=@im=fcitx

5. NVIDIA 双显卡黑屏
解决：强制指定核显：

export AQ_DRM_DEVICES="/dev/dri/card0"
