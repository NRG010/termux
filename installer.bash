#! /usr/bin/env bash

termux-am

termux-setup-storage

pkg up -y

pkg install neovim rust rust-analyzer neofetch fish starship yazi ffmpegthumbnailer p7zip jq poppler fd ripgrep fzf zoxide imagemagick ani-cli ncurses-utils unzip -y

curl -fsSL https://raw.githubusercontent.com/arnavgr/termux-nf/main/install.sh | bash

mv ./font $HOME/

chsh

getnf

git clone https://github.com/rofrol/termux-yt-dlp.git

cd termux-yt-dlp

bash install.sh

cd ../../../usr/etc

rm -rf motd
