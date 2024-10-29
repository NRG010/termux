#! /usr/bin/env bash

pkg update
pkg install git
git clone https://github.com/rofrol/termux-yt-dlp.git
cd termux-yt-dlp
bash install.sh
