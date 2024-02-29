sudo pacman -S firefox hyprland waybar hyprpaper thunar ttf-jetbrains-mono polkit-gnome grim slurp wl-clipboard arc-gtk-theme kitty wofi eog mpv papirus-icon-theme gvfs xdg-desktop-portal-hyprland

git clone https://aur.archlinux.org/yay-bin.git
cd yay-bin
makepkg -si
cd ..

yay -S hyprpicker vimix-cursors

gsettings set org.gnome.desktop.interface gtk-theme "Arc-Lighter"
gsettings set org.gnome.desktop.interface color-scheme "prefer-light"
gsettings set org.gnome.desktop.interface icon-theme "Papirus-Light"
gsettings set org.gnome.desktop.interface cursor-theme "Vimix-cursors"
gsettings set org.gnome.desktop.interface font-name "JetBrains Mono 9"
gsettings set org.gnome.desktop.wm.preferences theme "Arc-Lighter"
gsettings set org.gnome.desktop.wm.preferences button-layout :

mkdir ~/.fonts
mkdir ~/.fonts/TTF
cp fonts/* ~/.fonts/TTF

cp -r fontconfig ~/.config
cp -r hypr ~/.config
cp -r kitty ~/.config
cp -r waybar ~/.config
cp -r wofi ~/.config