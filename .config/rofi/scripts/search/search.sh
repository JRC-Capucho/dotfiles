#!/bin/bash
ans=$(echo -e "" | rofi -p "Search" -dmenu)
rs=$?
if [ $rs -eq 0 ] && [ "$ans" ]
then
    brave "google.com/search?q=${ans}"
fi
