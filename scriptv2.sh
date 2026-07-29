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

sudo flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo

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

sudo dnf install -y codiumndo se modifica un usuario ya existente.


flatpak install flathub org.geogebra.GeoGebra -y
flatpak install flathub com.nextcloud.desktopclient.nextcloud -y
flatpak install flathub ai.lmstudio.lm-studio -y


# Personalización

echo -e "${VERDE}Instalación completada, ahora se va a personalizar el sistema"
sleep 2

 ## Fastfetcho, le recomendamos utilizar lo mismo que en el nombre de usuario, que es ${AZUL}user${ROJO}."

 fastfetch --gen-config-force
 wget -O "$HOME/.config/fastfetch/asciicustom.txt" https://raw.githubusercontent.com/AlonsoFernandezPedrosa/Air-Linux/master/Ascii-Fastfetch.txt

 #Asistido por IA (solo este condicional)
 if grep fastfetch ~/.bashrc; then
    :

 else
    echo "fastfetch --file-raw $HOME/.config/fastfetch/asciicustom.txt" >> ~/.bashrc

 fi

 ## Tema Claro/Oscuro

 read -p "Indique que tema quiere escoger (White o Dark) y respete las mayúsculas: " theme
 if  [ "$theme" = "Dark" ]
 then
   lookandfeeltool -a org.kde.breezedark.desktop
   sudo rm /usr/share/icons/hicolor/scalable/apps/start-here.svg
   sudo rm /usr/share/icons/hicolor/scalable/places/start-here.svg
   sudo rm /usr/share/icons/hicolor/256x256/places/start-here.png
   sudo rm /usr/share/icons/hicolor/96x96/places/start-here.png
   sudo rm /usr/share/icons/hicolor/48x48/places/start-here.png
   sudo rm /usr/share/icons/hicolor/36x36/places/start-here.png
   sudo rm /usr/share/icons/hicolor/32x32/places/start-here.png
   sudo rm /usr/share/icons/hicolor/24x24/places/start-here.png
   sudo rm /usr/share/icons/hicolor/22x22/places/start-here.png
   sudo rm /usr/share/icons/hicolor/16x16/places/start-here.png

   sudo wget -O /usr/share/icons/hicolor/scalable/apps/start-here.svg https://raw.githubusercontent.com/AlonsoFernandezPedrosa/Air-Linux/refs/heads/master/assets/icono-white.svg
   sudo wget -O /usr/share/icons/hicolor/scalable/places/start-here.svg https://raw.githubusercontent.com/AlonsoFernandezPedrosa/Air-Linux/refs/heads/master/assets/icono-white.svg
   sudo wget -O /usr/share/icons/hicolor/256x256/places/start-here.png https://raw.githubusercontent.com/AlonsoFernandezPedrosa/Air-Linux/master/assets/256/icono-white.png
   sudo wget -O /usr/share/icons/hicolor/96x96/places/start-here.png https://raw.githubusercontent.com/AlonsoFernandezPedrosa/Air-Linux/master/assets/96/icono-white.png
   sudo wget -O /usr/share/icons/hicolor/48x48/places/start-here.png https://raw.githubusercontent.com/AlonsoFernandezPedrosa/Air-Linux/master/assets/48/icono-white.png
   sudo wget -O /usr/share/icons/hicolor/36x36/places/start-here.png https://raw.githubusercontent.com/AlonsoFernandezPedrosa/Air-Linux/master/assets/36/icono-white.png
   sudo wget -O /usr/share/icons/hicolor/32x32/places/start-here.png https://raw.githubusercontent.com/AlonsoFernandezPedrosa/Air-Linux/master/assets/32/icono-white.png
   sudo wget -O /usr/share/icons/hicolor/24x24/places/start-here.png https://raw.githubusercontent.com/AlonsoFernandezPedrosa/Air-Linux/master/assets/24/icono-white.png
   sudo wget -O /usr/share/icons/hicolor/22x22/places/start-here.png https://raw.githubusercontent.com/AlonsoFernandezPedrosa/Air-Linux/master/assets/22/icono-white.png
   sudo wget -O /usr/share/icons/hicolor/16x16/places/start-here.png https://raw.githubusercontent.com/AlonsoFernandezPedrosa/Air-Linux/master/assets/16/icono-white.png

   wget -O "$HOME/default_dark.png" https://raw.githubusercontent.com/AlonsoFernandezPedrosa/Air-Linux/refs/heads/master/assets/default_dark.png
   plasma-apply-wallpaperimage $HOME/default_dark.png
   sudo wget -O /usr/share/plasma/look-and-feel/org.kde.breeze.desktop/contents/splash/images/plasma.svgz https://raw.githubusercontent.com/AlonsoFernandezPedrosa/Air-Linux/refs/heads/master/assets/plasma.svgz

 elif  [ "$theme" = "White" ]
 then
   lookandfeeltool -a org.kde.breeze.desktop
   sudo rm /usr/share/icons/hicolor/scalable/apps/start-here.svg
   sudo rm /usr/share/icons/hicolor/scalable/places/start-here.svg
   sudo rm /usr/share/icons/hicolor/256x256/places/start-here.png
   sudo rm /usr/share/icons/hicolor/96x96/places/start-here.png
   sudo rm /usr/share/icons/hicolor/48x48/places/start-here.png
   sudo rm /usr/share/icons/hicolor/36x36/places/start-here.png
   sudo rm /usr/share/icons/hicolor/32x32/places/start-here.png
   sudo rm /usr/share/icons/hicolor/24x24/places/start-here.png
   sudo rm /usr/share/icons/hicolor/22x22/places/start-here.png
   sudo rm /usr/share/icons/hicolor/16x16/places/start-here.png

   sudo wget -O /usr/share/icons/hicolor/scalable/apps/start-here.svg https://raw.githubusercontent.com/AlonsoFernandezPedrosa/Air-Linux/refs/heads/master/assets/icono-dark.svg
   sudo wget -O /usr/share/icons/hicolor/scalable/places/start-here.svg https://raw.githubusercontent.com/AlonsoFernandezPedrosa/Air-Linux/refs/heads/master/assets/icono-dark.svg
   sudo wget -O /usr/share/icons/hicolor/256x256/places/start-here.png https://raw.githubusercontent.com/AlonsoFernandezPedrosa/Air-Linux/master/assets/256/icono-dark.png
   sudo wget -O /usr/share/icons/hicolor/96x96/places/start-here.png https://raw.githubusercontent.com/AlonsoFernandezPedrosa/Air-Linux/master/assets/96/icono-dark.png
   sudo wget -O /usr/share/icons/hicolor/48x48/places/start-here.png https://raw.githubusercontent.com/AlonsoFernandezPedrosa/Air-Linux/master/assets/48/icono-dark.png
   sudo wget -O /usr/share/icons/hicolor/36x36/places/start-here.png https://raw.githubusercontent.com/AlonsoFernandezPedrosa/Air-Linux/master/assets/36/icono-dark.png
   sudo wget -O /usr/share/icons/hicolor/32x32/places/start-here.png https://raw.githubusercontent.com/AlonsoFernandezPedrosa/Air-Linux/master/assets/32/icono-dark.png
   sudo wget -O /usr/share/icons/hicolor/24x24/places/start-here.png https://raw.githubusercontent.com/AlonsoFernandezPedrosa/Air-Linux/master/assets/24/icono-dark.png
   sudo wget -O /usr/share/icons/hicolor/22x22/places/start-here.png https://raw.githubusercontent.com/AlonsoFernandezPedrosa/Air-Linux/master/assets/22/icono-dark.png
   sudo wget -O /usr/share/icons/hicolor/16x16/places/start-here.png https://raw.githubusercontent.com/AlonsoFernandezPedrosa/Air-Linux/master/assets/16/icono-dark.png

   wget -O "$HOME/default_white.png" https://raw.githubusercontent.com/AlonsoFernandezPedrosa/Air-Linux/refs/heads/master/assets/default_white.png
   plasma-apply-wallpaperimage $HOME/default_white.png
   sudo wget -O /usr/share/plasma/look-and-feel/org.kde.breeze.desktop/contents/splash/images/plasma.svgz https://raw.githubusercontent.com/AlonsoFernandezPedrosa/Air-Linux/refs/heads/master/assets/plasma.svgz



 else
   echo -e "${ROJON}No es una opción válida, vuelva a intentarlo"

 fi

# Configuración usuarios

echo -e "${VERDE}Personalización completada, se van a crear y restringir los usuarios"
sleep 3

sudo useradd -m user

echo -e "${ROJO}Se va a crear la contraseña del nuevo usuario, le recomendamos utilizar lo mismo que en el nombre de usuario que es ${AZUL}user${NC}"
sleep 1
passwd user
