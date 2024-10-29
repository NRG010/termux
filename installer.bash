#! /usr/bin/env bash

pkg up -y

termux-am

termux-setup-storage

pkg update

pkg install fish starship yazi ffmpegthumbnailer p7zip jq poppler fd ripgrep fzf zoxide imagemagick ani-cli ncurses-utils unzip

curl -fsSL https://raw.githubusercontent.com/arnavgr/termux-nf/main/install.sh | bash

mv ./font $HOME/

chsh

getnf

git clone https://github.com/rofrol/termux-yt-dlp.git

cd termux-yt-dlp

bash install.sh

rm termux-yt-dlp
