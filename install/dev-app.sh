#!/usr/bin/env sh

if [[ -v FIRST_RUN_OPTIONAL_APPS ]]; then
  apps=$FIRST_RUN_OPTIONAL_APPS
else
  OPTIONAL_APPS=("qBittorrent" "Spotify" "Zoom" "Discord" "Postman" "DBeaver" "Brave" "Chrome")
  apps=$(gum choose "${OPTIONAL_APPS[@]}" --no-limit --height 10 --header "Select programming languages")
fi

if [[ -n "$apps" ]]; then
  for app in $apps; do
    case $app in
      qBittorrent)
        yay -S --needed qbittorrent --noconfirm
        ;;
      Spotify)
        yay -S --needed spotify --noconfirm
        ;;
      Zoom)
        yay -S --needed zoom --noconfirm
        ;;
      Discord)
        yay -S --needed vesktop --noconfirm
        ;;
      Postman)
        yay -S --needed postman-bin --noconfirm
        ;;
      DBeaver)
        yay -S --needed dbeaver --noconfirm
        ;;
      Brave)
        yay -S --needed brave-bin --noconfirm
        ;;
      Chrome)
        yay -S --needed google-chrome --noconfirm
        ;;
    esac
  done
fi
