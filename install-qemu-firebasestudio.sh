#!/bin/bash
clear
echo "------------------------"
echo "SNIPA VN"
echo "YouTube: https://youtube.com/@snipavn205"
echo "------------------------"
echo "Chờ 2s để bắt đầu cài đặt"
sleep 2
clear
echo "Đang tải package cho qemu"
sudo apt update && sudo apt install qemu-system -y
cd Downloads
echo -e "Vui lòng nhập iso windows/linux"
read iso1
wget -O win.iso $iso1
wget -O virtio.iso https://fedorapeople.org/groups/virt/virtio-win/direct-downloads/archive-virtio/virtio-win-0.1.271-1/virtio-win-0.1.271.iso
cd
echo -e "Bạn muốn bao nhiêu G"
read sizedisk
qemu-img create -f qcow2 /home/user/Android/Sdk/disk.qcow2 $sizedisk
clear
echo "------------------------"
echo "SNIPA VN"
echo "YouTube: https://youtube.com/@snipavn205"
echo "------------------------"
echo "Đã Xong ✔️ giờ vào trang github này để chép lệnh qemu tiếp theo https://github.com/Snhvn/Install-Qemu-Firebase-Studio/blob/main/README.md"
