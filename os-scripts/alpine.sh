#!/bin/sh

doas cp configs/alpine-repos /etc/apk/repositories
doas apk update
doas apk upgrade

doas apk add zoxide fish zellij exa bat starship neovim git alpine-sdk

mkdir -p ~/.config
cp -r configs/fish ~/.config/
cp -r configs/zellij ~/.config

git clone https://github.com/NvChad/starter ~/.config/nvim
