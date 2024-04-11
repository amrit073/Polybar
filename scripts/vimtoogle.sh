if setxkbmap -query | grep caps
then
	 setxkbmap -option
	 polybar-msg hook keymap 1 

else
	setxkbmap -option caps:escape
	xmodmap -e  'keycode 9 = grave asciitilde'
	polybar-msg hook keymap 2

fi
