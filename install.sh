#!/usr/bin/env bash

if [ -e /etc/nixos/configuration.nix ];
then
  mv /etc/nixos/configuration.nix /etc/nixos/configuration.nix.bkp
  echo "Configuration backup at /etc/nixos/configuration.nix.bkp"
fi

read -p 'Set hostname: ' hostname
sed -ir "s/hostName = .aira.;/hostName = \"$hostname\";/g" ./configuration/configuration.nix

read -p 'Set username: ' username
sed -ir "s/extraUsers.user =/extraUsers.$username =/g" ./configuration/configuration.nix
sed -ir "s/home.user/\/home\/$username/g" ./configuration/configuration.nix


echo "Replacing configuration..."
cp -rf ./configuration/* /etc/nixos/


echo "Implementing configuration..."
nixos-rebuild switch


echo "Please profile password for $username"
passwd $username


echo "Setting up dotfiles..."
su $username
cd ./dotfiles
sh ./install.sh

echo "Done."
