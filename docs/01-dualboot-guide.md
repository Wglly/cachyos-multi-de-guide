# Windows 10 + CachyOS 双系统安装指南

## 准备工作

1. **备份数据**：安装双系统前务必备份重要数据。
2. **关闭 Windows 快速启动**：控制面板 → 电源选项 → 选择电源按钮的功能 → 取消勾选“启用快速启动”。
3. **关闭 BitLocker**：如果启用了 BitLocker，先暂停或解密。
4. **准备 U 盘**：至少 8GB，用 Ventoy 或 Rufus 制作 CachyOS 启动盘。
5. **划分磁盘空间**：在 Windows 磁盘管理中压缩出至少 50GB 未分配空间。

## 安装步骤

### 1. 进入 BIOS

- 重启按 `F2` / `Del` / `F12` 进入 BIOS。
- 关闭 Secure Boot（或后续配置签名）。
- 确认启动模式为 UEFI。

### 2. 启动 CachyOS 安装介质

- 从 U 盘启动，选择 “Start CachyOS”。
- 进入 Live 环境后，运行 `cachyos-calamares`。

### 3. 分区方案（手动分区推荐）

| 分区 | 大小 | 类型 | 挂载点 |
|------|------|------|--------|
| /boot/efi | 512MB | FAT32 | /boot/efi |
| / | 40GB+ | ext4 | / |
| /home | 剩余空间 | ext4 | /home |
| swap | 内存大小 | swap | - |

> 注意：不要动 Windows 的 EFI 分区，CachyOS 安装程序会自动识别并共用。

### 4. 引导安装

- 安装程序会自动检测 Windows 并配置 GRUB 引导。
- 安装完成后重启，应能看到 GRUB 菜单。

## 常见问题

- **GRUB 没有 Windows 选项**：运行 `sudo os-prober` 和 `sudo grub-mkconfig -o /boot/grub/grub.cfg`。
- **时间不同步**：运行 `timedatectl set-local-rtc 1`。
