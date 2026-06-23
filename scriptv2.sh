# Definir colores

ROJON='\033[1;31m'
VERDE='\033[0;32m'
AMARILLO='\033[0;33m'
AZUL='\033[1;34m'
NC='\033[0m'
ROJO='\033[0;31m'

# Inicio
echo -e "${AZUL}-----------------------------------"
echo -e "${AZUL}|Bienvenido al script de Air Linux|"
echo -e "${AZUL}-----------------------------------"

# Explicacion y DISCLAIMER
echo -e "${VERDE}A continuación se van a realizar una serie de procesos para convertir Fedora en Air Linux"

echo -e "${ROJON}DISCLAIMER: ${ROJO}Air Linux es un proyecto educativo que no está vinculado con Fedora, todas las herramientas de la distribución están disponibles en el repositorio de GitHub: github.com"


#Actualizacion
echo -e "${VERDE}Actualizando... Se le pedirá contraseña root${NC}"

sudo dnf upgrade -y && sudo dnf update -y


echo -e "${VERDE}Actualizado, ahora se procederá a la instalación de los programas${NC}"
sleep 3

flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo

sudo dnf install -y  flameshot openshot gimp krita stellarium pidgin

URL_LAST_RPM=$(curl -s https://api.github.com/repos/veyon/veyon/releases/latest | grep "browser_download_url" | grep "fedora" | cut -d '"' -f 4) && wget -q "$URL_LAST_RPM" && sudo dnf localinstall -y veyon-*.rpm && sudo rm veyon-*.rpm

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

# Instalacion de AppImages
## LMSTUDIO
mkdir -p "$HOME/.local/bin"

wget "https://lmstudio.ai/download/latest/linux/x64" -O "$HOME/.local/bin/LMStudio.appimage"

chmod +x "$HOME/.local/bin/LMStudio.appimage"

mkdir -p "$HOME/.local/share/applications"

cat << EOF > "$HOME/.local/share/applications/LMStudio.desktop"
[Desktop Entry]
Type=Application
Name=LMStudio
Comment=Ejecute IA en local
Exec=$HOME/.local/bin/LMStudio.appimage
Icon=system-run
Terminal=false
Categories=Utility;
EOF

## Helium
curl https://api.github.com/repos/imputnet/helium/releases/latest | grep '"browser_download_url":' | grep '.appimage' -o "$HOME/.local/bin/Helium.appimage"

chmod +x "$HOME/.local/bin/Helium.appimage"

mkdir -p "$HOME/.local/share/applications"

cat << EOF > "$HOME/.local/share/applications/Helium.desktop"
[Desktop Entry]
Type=Application
Name=Helium
Comment=Navegador Chromium con uBlock Origin instalado
Exec=$HOME/.local/bin/Helium.appimage
Icon=system-run
Terminal=false
Categories=Utility;
EOF
