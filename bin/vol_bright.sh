#!/bin/bash

# Usage: volume_brightness.sh [volume_up|volume_down|volume_mute|brightness_up|brightness_down]

msgTag="volume_brightness"

case $1 in
    volume_up)
        pamixer -i 5
        volume=$(pamixer --get-volume)
        dunstify -a "changeVolume" -u low -h string:x-dunst-stack-tag:$msgTag -h int:value:"$volume" "Volume: ${volume}%"
        ;;
    volume_down)
        pamixer -d 5
        volume=$(pamixer --get-volume)
        dunstify -a "changeVolume" -u low -h string:x-dunst-stack-tag:$msgTag -h int:value:"$volume" "Volume: ${volume}%"
        ;;
    volume_mute)
        pamixer -t
        if [ "$(pamixer --get-mute)" == "true" ]; then
            dunstify -a "changeVolume" -u low -h string:x-dunst-stack-tag:$msgTag "Volume: Muted"
        else
            dunstify -a "changeVolume" -u low -h string:x-dunst-stack-tag:$msgTag "Volume: Unmuted"
        fi
        ;;
    brightness_up)
        brightnessctl set +5%
        brightness=$(brightnessctl info | grep -oP '\(\K[^%]+(?=%\))')
        dunstify -a "changeBrightness" -u low -h string:x-dunst-stack-tag:$msgTag -h int:value:"$brightness" "Brightness: ${brightness}%"
        ;;
    brightness_down)
        brightnessctl set 5%-
        brightness=$(brightnessctl info | grep -oP '\(\K[^%]+(?=%\))')
        dunstify -a "changeBrightness" -u low -h string:x-dunst-stack-tag:$msgTag -h int:value:"$brightness" "Brightness: ${brightness}%"
        ;;
esac
