#!/bin/bash
THEME=dark

if [ $THEME == "light" ]; then
	sed -i "2s/.*/THEME=dark/" ~/.config/waybar/theme.sh
	sed -i -e "s/Vimix-cursors/Vimix-white-cursors/g" ~/.config/hypr/hyprland.conf
	sed -i -e "s/dark.jpg/light.jpg/g" ~/.config/hypr/hyprpaper.conf
	sed -i -e "s/include light.conf/include dark.conf/g" ~/.config/kitty/kitty.conf

	gsettings set org.gnome.desktop.interface gtk-theme "Arc-Dark"
	gsettings set org.gnome.desktop.interface color-scheme "prefer-dark"
	gsettings set org.gnome.desktop.interface icon-theme "Papirus-Dark"
	gsettings set org.gnome.desktop.interface cursor-theme "Vimix-white-cursors"
	gsettings set org.gnome.desktop.wm.preferences theme "Arc-Dark"

	hyprctl setcursor "Vimix-white-cursors" 24

	killall hyprpaper
	exec hyprpaper
elif [ $THEME == "dark" ]; then
	sed -i "2s/.*/THEME=light/" ~/.config/waybar/theme.sh
	sed -i -e "s/Vimix-white-cursors/Vimix-cursors/g" ~/.config/hypr/hyprland.conf
	sed -i -e "s/light.jpg/dark.jpg/g" ~/.config/hypr/hyprpaper.conf
	sed -i -e "s/include dark.conf/include light.conf/g" ~/.config/kitty/kitty.conf

	gsettings set org.gnome.desktop.interface gtk-theme "Arc-Lighter"
	gsettings set org.gnome.desktop.interface color-scheme "prefer-light"
	gsettings set org.gnome.desktop.interface icon-theme "Papirus-Light"
	gsettings set org.gnome.desktop.interface cursor-theme "Vimix-cursors"
	gsettings set org.gnome.desktop.wm.preferences theme "Arc-Lighter"

	hyprctl setcursor "Vimix-cursors" 24

	killall hyprpaper
	exec hyprpaper
fi