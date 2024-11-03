#!/usr/bin/env sh

if [[ -v FIRST_RUN_LANGUAGES ]]; then
  languages=$FIRST_RUN_LANGUAGES
else
  AVAILABLE_LANGUAGES=("Ruby on Rails" "Node.js" "Go" "PHP" "Python" "Elixir" "Rust" "Java")
  languages=$(gum choose "${AVAILABLE_LANGUAGES[@]}" --no-limit --height 10 --header "Select programming languages")
fi

if [[ -n "$languages" ]]; then
  for language in $languages; do
    case $language in
    Ruby)
      asdf plugin-add ruby
      version=$(asdf list all ruby | grep -E '^[0-9]+\.[0-9]+\.[0-9]+$' | tail -n 1)
      asdf install ruby $version
      asdf global ruby $version
      ;;
    Node.js)
      asdf plugin-add nodejs
      asdf install nodejs latest
      asdf global nodejs latest
      ;;
    Go)
      asdf plugin-add golang
      version=$(asdf list all golang | grep -E '^[0-9]+\.[0-9]+\.[0-9]+$' | tail -n 1)
      asdf install golang $version
      asdf global golang $version

      echo ". ~/.asdf/plugins/golang/set-env.zsh" >> ~/.zshrc
      ;;
    PHP)
      yay -Syu --needed re2c libpqxx gd libzip oniguruma --noconfirm
      asdf plugin-add php
      version=$(asdf list all php | grep -E '^[0-9]+\.[0-9]+\.[0-9]+$' | tail -n 1)
      asdf install php $version
      asdf global php $version
      ;;
    Python)
      yay -Syu --needed base-devel openssl zlib xz tk --noconfirm
      asdf plugin-add python
      version=$(asdf list all python | grep -E '^[0-9]+\.[0-9]+\.[0-9]+$' | tail -n 1)
      asdf install python $version
      asdf global python $version
      ;;
    Elixir)
      yay -Syu --needed ncurses libssh unixodbc libxslt fop glu mesa wxwidgets-gtk3 libpng --noconfirm
      asdf plugin-add erlang
      asdf install erlang latest
      asdf global erlang latest

      asdf plugin-add elixir
      version=$(asdf list all elixir | grep -E '^[0-9]+\.[0-9]+\.[0-9]+$' | tail -n 1)
      asdf install elixir $version
      asdf global elixir $version
      ;;
    Rust)
      asdf plugin-add rust
      asdf install rust latest
      asdf global rust latest
      ;;
    Java)
      yay -Syu --needed curl --noconfirm
      asdf plugin-add java
      asdf install java latest:openjdk
      asdf global java latest:openjdk

      echo ". ~/.asdf/plugins/java/set-java-home.zsh" >> ~/.zshrc
      ;;
    esac
  done
fi

unset FIRST_RUN_LANGUAGES
