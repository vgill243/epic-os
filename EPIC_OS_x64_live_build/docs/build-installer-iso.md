# Building the installer ISO

Use a tested Linux live-build base and integrate a mature graphical installer such as Calamares.

Required ISO components:
- Linux kernel
- initramfs
- UEFI boot files
- Live desktop
- Calamares
- EPIC OS branding/configuration
- Steam/Proton gaming packages
- GameMode/MangoHud/Gamescope
- Wine
- Vulkan drivers/firmware
- NetworkManager/Bluetooth/PipeWire
- Android container setup

The ISO should provide both:
- Try EPIC OS
- Install EPIC OS

Test in a VM before writing to a physical USB drive.
