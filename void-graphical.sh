#!/bin/bash
xbps-install -Syuv

echo "adding user anon, add password after."
#useradd -m -s /bin/bash -U -G wheel,users,audio,video,cdrom,input anon

echo "installing xorg now"
xbps-install -Sy xorg-minimal xinit xterm xorg-fonts xf86-input-synaptics xf86-video-intel 

echo "installing i3"
xbps-install -Sy i3-gaps 

echo "some extra software"
xbps-install -Sy git rxvt-unicode ranger cmus cmus-faad cmus-ffmpeg cmus-flac cmus-libao cmus-modplug cmus-mpc cmus-oss cmus-pulseaudio cmus-wavpack compton lxappearance icecat feh polybar wpa_gui transmission transmission-gt unzip w3m w3m-img mpv ImageMagick

echo "now for some fonts"
xbps-install -Sy font-awesome  ipafont-fonts-otf noto-fonts-ttf font-unifont-bdf 

echo "some gtk themes and icons"
xbps-install -Sy Adapta breeze-icons
echo "now just set anons password"
passwd anon

echo "make sure %wheel is uncommented in the visudo file"
visudo
echo "then, switch into anon"
echo "after you switch into anon, feel free to edit your xinitrc"
su anon
