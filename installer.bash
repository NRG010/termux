#! /usr/bin/env bash

pkg up -y

termux-am

termux-setup-storage

pkg install fish starship yazi ffmpegthumbnailer p7zip jq poppler fd ripgrep fzf zoxide imagemagick ani-cli ncurses-utils

curl -fsSL https://raw.githubusercontent.com/arnavgr/termux-nf/main/install.sh | bash
