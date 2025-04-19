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
wget -O virto.iso 
cd
qemu-img create -f qcow2 /home/user/Qemu/disk.qcow2 128G
