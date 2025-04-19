#!/bin/bash
sudo apt update && sudo apt install qemu-system -y
mkdir Qemu
cd Qemu
echo -e "Vui lòng nhập iso windows/linux"
read iso1
wget -O win.iso $iso1
wget -O virto.iso 
cd
qemu-img create -f qcow2 /home/user/Qemu/disk.qcow2 128G
qemu-system-x86_64 -M q35 -usb -device qemu-xhci -device usb-tablet -device usb-kbd -cpu host,+pae -smp sockets=1,cores=16,threads=1 -m 49152M -drive file=/home/user/Qemu/disk.qcow2,aio=threads,cache=writeback,if=none,id=hda -device ahci,id=hdaahci -device ide-hd,drive=hda,bus=hdaahci.0 -cdrom /home/user/Qemu/win.iso -vga std -device ich9-intel-hda -device hda-duplex -device virtio-net-pci,netdev=n0 -netdev user,id=n0 -accel kvm -device virtio-serial-pci -device intel-iommu
qemu-system-x86_64 -M q35 -usb -device qemu-xhci -device usb-tablet -device usb-kbd -cpu host,+pae -smp sockets=1,cores=16,threads=1 -m 49152M -drive file=/home/user/Qemu/disk.qcow2,aio=threads,cache=writeback,if=none,id=hda -device ahci,id=hdaahci -device ide-hd,drive=hda,bus=hdaahci.0 -cdrom /home/user/Qemu/virtio.iso -vga std -device ich9-intel-hda -device hda-duplex -device virtio-net-pci,netdev=n0 -netdev user,id=n0 -accel kvm -device virtio-serial-pci -device intel-iommu
