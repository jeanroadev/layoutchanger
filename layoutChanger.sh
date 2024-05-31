#!/bin/bash

# Define layouts 
layout_1="us"
layout_2="es"

# Verify the current layout
current_layout=$(setxkbmap -query | grep layout | awk '{print $2}')

# Change Layout and send notification
if [ "$current_layout" = "$layout_1" ]; then
    setxkbmap $layout_2
    notify-send "Layout de teclado cambiado" "Ahora estás usando el layout $layout_2"
else
    setxkbmap $layout_1
    notify-send "Layout de teclado cambiado" "Ahora estás usando el layout $layout_1"
fi
