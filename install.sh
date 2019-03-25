#!/usr/bin/env bash

if [ -e /etc/nixos/configuration.nix ];
then
  mv /etc/nixos/configuration.nix /etc/nixos/configuration.nix.bkp
  echo "Configuration backup at /etc/nixos/configuration.nix.bkp"
fi

echo "1 Replacing configuration..."
cp -rf ./configuration/* /etc/nixos/

echo "2 Set hostname:"
#TODO: read hostname and set it to hostname conf
#TODO: set username from user input and set it to hostname

echo "2 Implementing configuration..."
nixos-rebuild switch

echo "3 Please profile password for khassanov"
passwd khassanov


echo "4 Setting up dotfiles..."
su khassanov
cd ./dotfiles
sh ./install.sh

echo "5 Done."
