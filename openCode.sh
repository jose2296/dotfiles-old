#! /bin/bash

all=$(ls ~/workspace)
important="api\nplatform\nengineering\nclient-portal\nclient-portal-v2\ncommercial-simulator\ninstallers-app\nmonitoring-app"
k8="pro\npre\ndev"
options="important\nall\nk8\nvpns\ncode"

# optionSelected=$(echo $options | fzf)
optionSelected=$(echo $options | rofi -color-window "#282a36, #000000, #44475a" -color-normal "#282a36, #40fa7b, #44475a, #bd93f9, #f8f8f2" -color-active "#ff79c6, #f8f8f2, #ffb86c, #8be9fd, #282a36" -color-urgent "#ff5555, #f8f8f2, #ff5555, #ff5555, #f8f8f2" -show -dmenu)

# rofiCommand="rofi -color-window \"#282a36, #000000, #44475a\" -color-normal \"#282a36, #40fa7b, #44475a, #bd93f9, #f8f8f2\" -color-active \"#ff79c6, #f8f8f2, #ffb86c, #8be9fd, #282a36\" -color-urgent \"#ff5555, #f8f8f2, #ff5555, #ff5555, #f8f8f2\" -show -dmenu"

if [ "$optionSelected" = "important" ]
then
dir=$(echo $important | rofi -color-window "#282a36, #000000, #44475a" -color-normal "#282a36, #40fa7b, #44475a, #bd93f9, #f8f8f2" -color-active "#ff79c6, #f8f8f2, #ffb86c, #8be9fd, #282a36" -color-urgent "#ff5555, #f8f8f2, #ff5555, #ff5555, #f8f8f2" -show -dmenu)
if [ "$dir" != "" ]
then
    code ~/workspace/$dir
fi
elif [ "$optionSelected" = "all" ]
then
dir=$(echo $all | sed "s/ /\n/g" | rofi -color-window "#282a36, #000000, #44475a" -color-normal "#282a36, #40fa7b, #44475a, #bd93f9, #f8f8f2" -color-active "#ff79c6, #f8f8f2, #ffb86c, #8be9fd, #282a36" -color-urgent "#ff5555, #f8f8f2, #ff5555, #ff5555, #f8f8f2" -show -dmenu)
if [ "$dir" != "" ]
then
    code ~/workspace/$dir
fi
elif [ "$optionSelected" = "k8" ]
then
dir=$(echo $k8 | rofi -color-window "#282a36, #000000, #44475a" -color-normal "#282a36, #40fa7b, #44475a, #bd93f9, #f8f8f2" -color-active "#ff79c6, #f8f8f2, #ffb86c, #8be9fd, #282a36" -color-urgent "#ff5555, #f8f8f2, #ff5555, #ff5555, #f8f8f2" -show -dmenu)
if [ "$dir" != "" ]
then
    code ~/workspace/$dir
fi
elif [ "$optionSelected" = "code" ]
then
dir=$(ls ~/code | rofi -color-window "#282a36, #000000, #44475a" -color-normal "#282a36, #40fa7b, #44475a, #bd93f9, #f8f8f2" -color-active "#ff79c6, #f8f8f2, #ffb86c, #8be9fd, #282a36" -color-urgent "#ff5555, #f8f8f2, #ff5555, #ff5555, #f8f8f2" -show -dmenu)
if [ "$dir" != "" ]
then
    code ~/code/$dir
fi
else
echo "No option selected."
fi
