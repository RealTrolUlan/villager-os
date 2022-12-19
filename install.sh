#!/bin/bash
sudo pacman -Syyu --noconfirm
sudo pacman -Syy  i3 --noconfirm
sudo pacman -Syy  gdm --noconfirm
sudo pacman -Syy  dmenu --noconfirm
sudo pacman -Syy  ranger --noconfirm
sudo pacman -Syy  zsh --noconfirm
sudo pacman -Syy  networkmanager --noconfirm
sudo pacman -Syy  emacs --noconfirm
sudo pacman -Syy  nvim --noconfirm
sudo pacman -Syy  mc --noconfirm
sudo pacman -Syy  vim --noconfirm
sudo pacman -Syy  nvim --noconfirm
sudo pacman -Syy  gimp --noconfirm
sudo pacman -Syy  polybar --noconfirm
sudo pacman -Syy  nano --noconfirm
sudo pacman -Syy  dolphin --noconfirm
sudo pacman -Syy  gimp --noconfirm
sudo pacman -Syy  blender --noconfirm
sudo pacman -Syy  openssh --noconfirm
sudo pacman -Syy  discord --noconfirm
sudo pacman -Syy  konsole --noconfirm
sudo pacman -Syy  plasma --noconfirm
sudo pacman -Syy  virtualbox --noconfirm
sudo pacman -Syy  kdenlive --noconfirm
sudo pacman -Syy  tint2 --noconfirm
sudo pacman -Syy kate --noconfirm
sudo pacman -Syy neofetch --noconfirm
sudo pacman -Syy screenfetch --noconfirm
sudo pacman -S --needed --asdeps git base-devel --noconfirm
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si

cd ..


# needed dependicies for boot

git clone https://github.com/syl20bnr/spacemacs ~/.emacs.d
sudo git clone https://github.com/syl20bnr/spacemacs ~/.emacs.d
yay -Syy feh
mkdir ~/Pictures/random

git clone https://github.com/moderncraft1234/villager-os/blob/main/profile ~/.profile

cp profile ~/.profile

cp -r random/ /home/$USER/Picures/random

cp neofetch /home/$USER/.config/neofetch/config.conf

sudo cp neofetch /root/.config/neofetch/config.conf

sudo cp os-release /etc/os-release

neofetch

git clone https://github.com/moderncraft1234/villager-os/tree/main/random ~/Pictures/random

yay -Sy screenfetch --noconfirm

yay -Sy google-chrome --noconfirm

yay -Sy wine --noconfirm

yay -Sy lutris --noconfirm

yay -S --noconfirm zsh-theme-powerlevel10k-git
echo 'source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme' >>~/.zshrc

cp zshrc ~/.zshrc

cp p10k.zsh ~/.p10k.zsh

cp tint2rc ~/.config/tint2/tint2rc

sudo cp hosts /etc/hosts


echo "thank you for taking the time to install villager-os enjoy the configs and theming"

read -p "wanna continue:  " continue

mkdir /home/$USER/Documents/villager-os

touch /home/$USER/Documents/villager-os/final.log

echo "$continue" &> /home/$USER/Documents/villager-os/final.log

# copy the configs and get extra dependicies for final installation

sudo systemctl enable gdm
sudo systemctl start gdm
nohup exec polybar &
nohup tin2 &

