# Install-Qemu-Firebase-Studio
• Lệnh setup:
```
bash <(curl -Ls https://raw.githubusercontent.com/Snhvn/Install-Qemu-Firebase-Studio/refs/heads/main/install-qemu-firebasestudio.sh)
```
• Lệnh cài win
```
qemu-system-x86_64 -M q35 -usb -device qemu-xhci -device usb-tablet -device usb-kbd -cpu host,+pae -smp sockets=1,cores=16,threads=1 -m 49152M -drive file=/Android/Sdk/disk.qcow2,aio=threads,cache=writeback,if=none,id=hda -device ahci,id=hdaahci -device ide-hd,drive=hda,bus=hdaahci.0 -cdrom /Downloads/win.iso -vga std -device ich9-intel-hda -device hda-duplex -device virtio-net-pci,netdev=n0 -netdev user,id=n0 -accel kvm -device virtio-serial-pci -device intel-iommu
```


• Lệnh cài mạng:
```
qemu-system-x86_64 -M q35 -usb -device qemu-xhci -device usb-tablet -device usb-kbd -cpu host,+pae -smp sockets=1,cores=16,threads=1 -m 49152M -drive file=/Android/Sdk/disk.qcow2,aio=threads,cache=writeback,if=none,id=hda -device ahci,id=hdaahci -device ide-hd,drive=hda,bus=hdaahci.0 -cdrom /Downloads/virtio.iso -vga std -device ich9-intel-hda -device hda-duplex -device virtio-net-pci,netdev=n0 -netdev user,id=n0 -accel kvm -device virtio-serial-pci -device intel-iommu
```
