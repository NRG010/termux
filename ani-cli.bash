#! /usr/bin/env bash

wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.2.1/CascadiaCode.zip
unzip CascadiaCode
getnf -rm CaskaydiaCoveNerdFont-Bold.ttf CaskaydiaCoveNerdFont-BoldItalic.ttf CaskaydiaCoveNerdFont-ExtraLight.ttf CaskaydiaCoveNerdFont-ExtraLightItalic.ttf CaskaydiaCoveNerdFont-Italic.ttf CaskaydiaCoveNerdFont-Light.ttf CaskaydiaCoveNerdFont-LightItalic.ttf CaskaydiaCoveNerdFont-Regular.ttf CaskaydiaCoveNerdFont-SemiBold.ttf CaskaydiaCoveNerdFont-SemiBoldItalic.ttf CaskaydiaCoveNerdFont-SemiLight.ttf CaskaydiaCoveNerdFont-SemiLightItalic.ttf
rm *.tff LICENSE README.md
