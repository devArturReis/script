#!bin/bash

pkg update && pkg upgrade
pkg install tur-repo x11-repo

sed -i '1s/$/ tur-multilib/' /data/data/com.termux/files/usr/etc/apt/sources.list.d/tur.list

pkg update && pkg upgrade 

pkg install hangover termux-x11-*

pkg install wget

wget https://github.com/alexvorxx/hangover-termux/releases/download/9.22/wine_hangover_9.22_bionic_build_patched.tar.xz

tar -xf wine_hangover_9.22_bionic_build_patched.tar.xz

pkg update -y && pkg upgrade -y 
pkg install -y x11-repo tur-repo 
pkg install -y freetype git gnutls libandroid-shmem-static libx11 xorgproto libdrm libpixman libxfixes libjpeg-turbo mesa-demos osmesa pulseaudio termux-x11-nightly vulkan-tools xtrans libxxf86vm xorg-xrandr xorg-font-util xorg-util-macros libxfont2 libxkbfile libpciaccess xcb-util-renderutil xcb-util-image xcb-util-keysyms xcb-util-wm xorg-xkbcomp xkeyboard-config libxdamage libxinerama libxshmfence

termux-setup-storag

dpkg -i /sdcard/Download/mesa.deb




