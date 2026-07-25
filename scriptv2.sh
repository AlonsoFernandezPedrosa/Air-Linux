#!/bin/bash
# Definir colores

ROJON='\033[1;31m'
VERDE='\033[0;32m'
AMARILLO='\033[0;33m'
AZUL='\033[1;34m'
NC='\033[0m'
ROJO='\033[0;31m'

# Inicio
sleep 0.5
echo "
   ███    ████ ████████
  ██ ██    ██  ██     ██
 ██   ██   ██  ██     ██
██     ██  ██  ████████
█████████  ██  ██   ██
██     ██  ██  ██    ██
██     ██ ████ ██     ██

██████   ██████  ████████  ████ ████████  ████████
██    ██ ██    ██ ██     ██  ██  ██     ██    ██
██       ██       ██     ██  ██  ██     ██    ██
 ██████  ██       ████████   ██  ████████     ██
      ██ ██       ██   ██    ██  ██           ██
██    ██ ██    ██ ██    ██   ██  ██           ██
 ██████   ██████  ██     ██ ████ ██           ██

"

sleep 0.2
echo -e "${AZUL}-----------------------------------"
echo -e "${AZUL}|Bienvenido al script de Air Linux|"
echo -e "${AZUL}-----------------------------------"

# Explicacion y DISCLAIMER
sleep 0.2
echo -e "${VERDE}A continuación se van a realizar una serie de procesos para convertir Fedora en Air Linux"
sleep 0.2

echo -e "${ROJON}DISCLAIMER: ${ROJO}Air Linux es un proyecto educativo que no está vinculado con Fedora, todas las herramientas de la distribución están disponibles en el repositorio de GitHub: github.com"


#Actualizacion
sleep 0.2

echo -e "${VERDE}Actualizando... Se le pedirá contraseña root${NC}"

sudo dnf upgrade -y && sudo dnf update -y

#Instalacion
echo -e "${VERDE}Actualizado, ahora se procederá a la instalación de los programas${NC}"
sleep 3

sudo dnf copr enable imput/helium -y

flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo

sudo dnf install -y  flameshot openshot gimp krita stellarium pidgin fastfetch jd helium-bin

sudo tee -a /etc/yum.repos.d/vscodium.repo << 'EOF'
[gitlab.com_paulcarroty_vscodium_repo]
name=gitlab.com_paulcarroty_vscodium_repo
baseurl=https://paulcarroty.gitlab.io/vscodium-deb-rpm-repo/rpms/
enabled=1
gpgcheck=1
repo_gpgcheck=1
gpgkey=https://gitlab.com/paulcarroty/vscodium-deb-rpm-repo/raw/master/pub.gpg
metadata_expire=1h
EOF

sudo dnf install -y codium

flatpak install flathub org.geogebra.GeoGebra -y
flatpak install flathub com.nextcloud.desktopclient.nextcloud -y
flatpak install flathub ai.lmstudio.lm-studio -y


# Personalización

 ## Fastfetch

 fastfetch --gen-config-force
 wget -O "$HOME/.config/fastfetch/asciicustom.txt" https://raw.githubusercontent.com/AlonsoFernandezPedrosa/Air-Linux/master/Ascii-Fastfetch.txt

 if grep fastfetch ~/.bashrc; then
    :

 else
    echo "fastfetch --file-raw $HOME/.config/fastfetch/asciicustom.txt" >> ~/.bashrc

 fi

 ## Tema Claro/Oscuro

 read -p "Indique que tema quiere escoger (White o Dark) y respete las mayúsculas: " theme
 if  [ "$theme" = "White" ]
 then
   lookandfeeltool -a org.kde.breeze.desktop
   sudo rm /usr/share/icons/hicolor/scalable/places/start-here.svg
   sudo wget -O /usr/share/icons/hicolor/scalable/places/start-here.svg https://raw.githubusercontent.com/AlonsoFernandezPedrosa/Air-Linux/refs/heads/master/icono-dark.svg

 elif  [ "$theme" = "Dark" ]
 then
   lookandfeeltool -a org.kde.breezedark.desktop
   sudo rm /usr/share/icons/hicolor/scalable/places/start-here.svg
   sudo wget -O /usr/share/icons/hicolor/scalable/places/start-here.svg https://raw.githubusercontent.com/AlonsoFernandezPedrosa/Air-Linux/refs/heads/master/icono-white.svg

 else
   echo -e "${ROJON}No es una opción válida, vuelva a intentarlo"

 fi

