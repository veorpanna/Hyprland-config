sudo pacman -S kitty gedit nautilus wofi firefox nm-connection-editor blueman pavucontrol polkit-gnome hyprpaper mako waybar wlogout hypridle base-devel git

cd ~/Загрузки
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -sirc
cd ..
rm -rf yay

yay -S visual-studio-code-bin google-chrome swaylock-effects nekoray-mahdi-zarei-bin
