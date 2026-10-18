#!/bin/bash

set -euo pipefail

cd ~

sudo pacman -S --needed base-devel
git clone https://aur.archlinux.org/paru.git
cd paru
rustup default stable
makepkg -si

cd ~
rm -Rf paru
