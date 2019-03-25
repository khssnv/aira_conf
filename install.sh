#!/usr/bin/env bash

if [ -e /etc/nixos/configuration.nix ];
then
  mv /etc/nixos/configuration.nix /etc/nixos/configuration.nix.bkp
fi

cp -rf ./configuration /etc/nixos/
nixos-rebuild switch
passwd khassanov
su khassanov
cd ./dotfiles
sh ./install.sh
