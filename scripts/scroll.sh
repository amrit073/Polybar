#!/bin/bash

# see man zscroll for documentation of the following parameters
zscroll -l 30 \
        --delay 0.1 \
        --scroll-padding "  " \
        --match-command "$HOME/.config/polybar/scripts/music.sh " \
        --update-check true "$HOME/.config/polybar/scripts/music.sh" &

wait

