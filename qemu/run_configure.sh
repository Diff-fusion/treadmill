#!/bin/sh

qemu_path="${1:-.}"

"${qemu_path}/configure" \
    --target-list=x86_64-softmmu \
    --without-default-features \
    --enable-slirp \
    --enable-sdl \
    --disable-gtk \
    --disable-user \
    --disable-linux-user \
    --disable-guest-agent \
    --disable-gio \
    --disable-kvm \
    --disable-xkbcommon \
    --disable-vhost-user \
    --disable-tools
