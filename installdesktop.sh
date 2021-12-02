#! $PREFIX/bin/env bash

GREEN="\e[32m"
ENDCOLOR="\e[0m"

cd $HOME && clear && read -p "Do you want to install the desktop? [y/n] " -n 1 -r
echo
if [[ $REPLY =~ ^[Yy]$ ]]
then
    echo "doing stuff"
echo -e "${GREEN}
(•) Installing the desktop...
${ENDCOLOR}"
apt install unstable-repo x11-repo
apt install xcompmgr audacious xpdf texlive-roboto sl qt5-qtbase-gtk-platformtheme qt5-qttools qt5-qtx11extras lxqt lxqt-build-tools otter-browser qgit featherpad gtk2 gtk3 python-tkinter tigervnc xorg-xhost openbox geany qt5-qtwebsockets qt5-qtxmlpatterns qt5-qtdeclarative termux-api geany-plugins xorg-xprop neofetch galculator qt5-qttools glade feathernotes xorg-xprop mtpaint xorg-xhost -y
tar -xf themes.tar.gz -C $PREFIX/share/themes/
cd
wget https://raw.githubusercontent.com/NotteShock/material-termux-desktop/main/startdesktop.sh
chmod +x *.sh
cd $HOME

elif [[ $REPLY =~ ^[Nn]$ ]]
then
    echo "Action refused by user"
else
    echo "Invaild response!"
fi
