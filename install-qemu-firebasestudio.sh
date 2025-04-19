#!/bin/bash
echo "------------------------"
echo "SNIPA VN"
echo "YouTube: https://youtube.com/@snipavn205"
echo "------------------------"
clear
echo "Đang tải package cho qemu"
sudo apt update && sudo apt install qemu-system -y
mkdir Qemu
cd Qemu
echo -e "Vui lòng nhập iso windows/linux"
read iso1
wget -O win.iso $iso1
wget -O virto.iso https://fedorapeople.org/groups/virt/virtio-win/direct-downloads/archive-virtio/virtio-win-0.1.271-1/virtio-win-0.1.271.iso
cd
echo -e "Bạn muốn bao nhiêu disk"
read sizedisk
qemu-img create -f qcow2 /home/user/Qemu/disk.qcow2 $sizedisk
clear
echo "------------------------"
echo "SNIPA VN"
echo "YouTube: https://youtube.com/@snipavn205"
echo "------------------------"
echo "Đã Xong ✔️ giờ vào trang web Cài Qemu trên Firebase Studio - Online Notepad 'https://anotepad.com/notes/8jcm8256' có lệnh để cài win và cài mạng" 
