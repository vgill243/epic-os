#!/usr/bin/env bash
# Builds EPIC OS x64 live/installer ISO. Run on Debian/Ubuntu (VM or real machine), NOT on Windows/WSL.
set -euo pipefail
cd "$(dirname "$0")"
[ "$(id -u)" -eq 0 ] || { echo "Run with sudo: sudo ./build.sh"; exit 1; }
command -v lb >/dev/null || { apt-get update && apt-get install -y live-build debootstrap squashfs-tools xorriso; }
chmod +x auto/config config/hooks/live/* config/includes.chroot/usr/local/bin/* config/includes.chroot/etc/skel/Desktop/*.desktop
lb clean --purge || true
lb config
lb build 2>&1 | tee build.log
ISO=$(ls -1 *.iso | head -1)
mv "$ISO" epic-os-x64.iso
sha256sum epic-os-x64.iso | tee epic-os-x64.iso.sha256
echo "Done: $(pwd)/epic-os-x64.iso"
echo "Test:  qemu-system-x86_64 -m 4G -enable-kvm -cdrom epic-os-x64.iso"
