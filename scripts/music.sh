#!/bin/bash


# player_status=$(playerctl status 2> /dev/null)
# if [[ $? -eq 0 ]]; then
#     metadata=`playerctl metadata title| sed 'y/[(|/***/;s/ //g' `
# fi

# # Foreground color formatting tags are optional
# if [[ $player_status = "Playing" ]]; then
#     # echo "$metadata%{F-}"
#     printf "%$width.40s" $metadata
# elif [[ $player_status = "Paused" ]]; then
#     echo ""
# else
#     echo ""
# fi

zscroll --before-text "" --delay 0.3 \
    --length 30 \
    --match-command "playerctl status" \
    --match-text "Playing" "--before-text ' '" \
    --match-text "Paused" "--before-text ' ' --scroll 0" \
    --match-text "No players found" "--before-text '' --scroll 0" \
    --update-check true "playerctl metadata title" &

wait

#!/bin/sh
# if !! playerctl status > /dev/null 2>&1; then
#   echo 
#   exit 1
# elif playerctl status | grep -q Playing; then
  
# zscroll --before-text "" --delay 0.3 \
#     --length 20 \
#     --match-command "playerctl status" \
#     --match-text "Playing" "--before-text ' '" \
#     --update-check true "playerctl metadata title" &

# else
#   echo  
# fi
