
# #!/bin/bash

# if [[ $(playerctl status) == 'Playing' ]];
#   then
#     echo "$(playerctl metadata title)" | sed 'y/(-|/***/;s/ //g' | cut -d* -f1
#   elif [[ $(playerctl status) == 'Paused' ]];
#     then
#     echo '  '
#   else
#     echo '  ';
# fi


player_status=$(playerctl status 2> /dev/null)
if [[ $? -eq 0 ]]; then
    metadata=`playerctl metadata title| sed 'y/(-|/***/;s/ //g' | cut -d* -f1 `
fi

# Foreground color formatting tags are optional
if [[ $player_status = "Playing" ]]; then
    echo "$metadata%{F-}"
elif [[ $player_status = "Paused" ]]; then
    echo ""
else
    echo ""
fi

# #!/bin/bash

# if [[ $(playerctl status) == "Playing" ]];
#   then
#     echo "$(playerctl metadata title)" | sed 'y/(-|/***/;s/ //g' | cut -d* -f1
#   elif [[ $(playerctl status) == "Paused" ]];
#     then
#     echo '  '
#   else
#     echo '  ';
# fi

#!/bin/bash

# player_status=$(playerctl status 2> /dev/null)
# if [[ $? -eq 0 ]]; then
#     metadata="$(playerctl metadata artist) - $(playerctl metadata title)"
# fi

# # Foreground color formatting tags are optional
# if [[ $player_status = "Playing" ]]; then
#     echo "%{F#FFFFFF}$metadata%{F-}"
# elif [[ $player_status = "Paused" ]]; then
#     echo "%{F#999}$metadata%{F-}"
# else
#     echo ""
# fi


# player_status=$(playerctl status 2> /dev/null)
# if [[ $? -eq 0 ]]; then
#     metadata="$(playerctl metadata artist) - $(playerctl metadata title)"
# fi

# # Foreground color formatting tags are optional
# if [[ $player_status = "Playing" ]]; then
#     echo "%{F#FFFFFF}$metadata%{F-}"
# elif [[ $player_status = "Paused" ]]; then
#     echo "%{F#999}$metadata%{F-}"
# else
#     echo ""
# fi

# player_status=$(playerctl status 2> /dev/null)

# if [ "$player_status" = "Playing" ]; then
#     echo "#1 $(playerctl metadata artist) - $(playerctl metadata title)"
# elif [ "$player_status" = "Paused" ]; then
#     echo "#2 $(playerctl metadata artist) - $(playerctl metadata title)"
# else
#     echo "#3"
# fi
