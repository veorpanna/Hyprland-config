cp -rf .dotfiles/* ~/

sudo pacman -S base-devel git zsh
sudo pacman -S ttf-jetbrains-mono ttf-jetbrains-mono-nerd otf-font-awesome
sudo pacman -S wofi nm-connection-editor blueman pavucontrol polkit-gnome hyprpaper mako waybar wlogout hypridle
sudo pacman -S kitty vim gedit nautilus firefox   


git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -sirc
cd ..
rm -rf yay

yay -S visual-studio-code-bin google-chrome swaylock-effects nekoray-mahdi-zarei-bin