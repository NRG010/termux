#! /usr/bin/env bash

pkg up -y

termux-am

termux-setup-storage

pkg install fish starship yazi ffmpegthumbnailer p7zip jq poppler fd ripgrep fzf zoxide imagemagick ani-cli ncurses-utils unzip

curl -fsSL https://raw.githubusercontent.com/arnavgr/termux-nf/main/install.sh | bash
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.2.1/CascadiaCode.zip
unzip CascadiaCode
getnf -i CaskaydiaCoveNerdFont-Bold.ttf CaskaydiaCoveNerdFont-BoldItalic.ttf CaskaydiaCoveNerdFont-ExtraLight.ttf CaskaydiaCoveNerdFont-ExtraLightItalic.ttf CaskaydiaCoveNerdFont-Italic.ttf CaskaydiaCoveNerdFont-Light.ttf CaskaydiaCoveNerdFont-LightItalic.ttf CaskaydiaCoveNerdFont-Regular.ttf CaskaydiaCoveNerdFont-SemiBold.ttf CaskaydiaCoveNerdFont-SemiBoldItalic.ttf CaskaydiaCoveNerdFont-SemiLight.ttf CaskaydiaCoveNerdFont-SemiLightItalic.ttf
rm *.zip *.ttf LICENSE README.md
