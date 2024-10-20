#!/bin/sh
FILE="$(realpath "$1")"
cd qemu
./qemu-system-x86_64 -drive file="$FILE",format=qcow2,if=virtio -cpu max -m 1024 -usb -device usb-treadmill
