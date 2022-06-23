#!/bin/sh

# if ! mpc >/dev/null 2>&1; then
#   echo Server offline
#   exit 1
# elif mpc status | grep -q playing; then
#   ( mpc current | zscroll -l 10 -d 0.1 -n ) &
# else
#   echo Not playing
# fi
# # Block until an event is emitted
# mpc idle >/dev/null

# #!/bin/bash


# player_status=$(playerctl status 2> /dev/null)
# if [[ $? -eq 0 ]]; then
#     metadata=`playerctl metadata title| sed 'y/[(|/***/;s/ //g' `
# fi

# # Foreground color formatting tags are optional
# if [[ $player_status = "Playing" ]]; then
#     # echo "$metadata%{F-}"
#    ( playerctl metadata title | zscroll -l 10 -d 0.1  ) &
#    wait

# elif [[ $player_status = "Paused" ]]; then
#     echo ""
# else
#     echo ""
# fi

zscroll --before-text "♪ x" --delay 0.3 \
    --match-command "playerctl status" \
    --match-text "Playing" "--before-text ''" \
    --match-text "Paused" "--before-text '' --scroll 0" \
    --update-check true "playerctl metadata title" &

wait