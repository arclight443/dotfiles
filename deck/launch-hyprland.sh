#!/bin/sh

unset LD_PRELOAD
source /etc/profile.d/nix.sh
source /etc/profile.d/nix-datadir.sh
cd $HOME
exec nixGL Hyprland
