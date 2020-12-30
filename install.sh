#!/bin/sh

usage()
{
cat << EOF
usage: $0 [wm]

This script installs config files based on the wm of choice.

ARGS:
    wm  (i3/bspwm)
EOF
}

if [ "$1" != "i3" ] && [ "$1" != "bspwm" ]; then
    echo 'ERROR: please specify a window manager (i3/bspwm)'
    usage
    exit 1
else
    WM=$1
    # echo 'your wm of choice is' $1
fi

ITEMS=$WM' nvim polybar rofi termite vifm dunst picom qutebrowser viewnior'

if [ $WM == "bspwm" ]; then
    ITEMS='sxhkd '$ITEMS
fi

# echo $ITEMS

for file in $ITEMS
do
    if [ -d ~/.config/$file ]; then
        echo $file' directory exists...'
    else
        echo 'WARNING: directory not found, creating...'
        mkdir ~/.config/$file
    fi

    cp -r ./config/$file/* ~/.config/$file
    echo 'SUCCESS: '$file' files copied'
done
