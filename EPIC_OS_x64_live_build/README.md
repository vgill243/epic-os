# EPIC OS x64: Live + Installer ISO (Debian trixie base)

Builds a bootable ISO with an XFCE desktop, Calamares installer, NetworkManager,
Bluetooth, PipeWire, Vulkan drivers and EPIC OS branding.
Live login: user `epic`, password `live`.

## Build (Debian/Ubuntu machine or VM, with internet)
    sudo ./build.sh
Output: `epic-os-x64.iso` (+ `.sha256`). Takes 20-60 min, needs ~15 GB free.

## Build without a Linux PC
Upload this folder to a GitHub repo, then Actions > "Build EPIC OS ISO" > Run workflow.
Download the ISO from the run artifacts.

## Test first
    qemu-system-x86_64 -m 4G -enable-kvm -cdrom epic-os-x64.iso
Or make a VirtualBox/VMware VM (enable EFI) and attach the ISO.

## Write to USB
Rufus (choose "DD image mode") or balenaEtcher. Double-check the target drive.

## Gaming / Android
Steam, Wine, GameMode, MangoHud and Gamescope install on demand via the
"EPIC Gaming Setup" desktop icon. Android (Waydroid) is not in Debian repos
and is not included yet.

## Safety
The installer is Calamares: it asks which disk to use and confirms before erasing.
Test installs in a VM before using a real computer.
