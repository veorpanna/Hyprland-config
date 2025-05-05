cp -a dotfiles/. ~/

sudo pacman -S --noconfirm wayland hyprland git xdg-user-dirs base-devel xdg-desktop-portal-hyprland xdg-desktop-portal-gtk
sudo pacman -S --noconfirm ttf-droid noto-fonts ttf-jetbrains-mono ttf-jetbrains-mono-nerd otf-font-awesome
sudo pacman -S --noconfirm wofi polkit-gnome hyprpaper mako waybar wlogout hypridle 
sudo pacman -S --noconfirm nm-connection-editor blueman pavucontrol 
sudo pacman -S --noconfirm kitty vim nautilus firefox 

git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -sirc
cd ..
rm -rf yay

yay -S visual-studio-code-bin google-chrome swaylock-effects nekoray-mahdi-zarei-bin
