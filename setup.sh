
#!/bin/zsh

# Update
sudo apt update && sudo apt dist-upgrade -y

# Programs
sudo apt install terminator -y
sudo apt install tmux -y
sudo apt install xclip -y
sudo gem install evil-winrm

# Espanso
echo "Installing Espanso"
curl -s https://api.github.com/repos/espanso/espanso/releases/latest  | grep -E "browser_download_url.*Espanso-X11.AppImage" | cut -d : -f 2,3 | tr -d \" | grep -v sha256 | wget -qi - -O espanso
chmod +x espanso && sudo mv espanso /usr/bin/espanso 
espanso service register
espanso start

# OhMyZSH
bash ohmyzsh.sh
# VS Codium
wget -qO - https://gitlab.com/paulcarroty/vscodium-deb-rpm-repo/raw/master/pub.gpg \
    | gpg --dearmor \
    | sudo dd of=/usr/share/keyrings/vscodium-archive-keyring.gpg
    
    
    
echo 'deb [ signed-by=/usr/share/keyrings/vscodium-archive-keyring.gpg ] https://download.vscodium.com/debs vscodium main' \
    | sudo tee /etc/apt/sources.list.d/vscodium.list
    
    
sudo apt update && sudo apt install codium

# Visual Touches

# Make themes directory
mkdir ~/.themes


# Extract the theme (assuming it's a compressed archive)
tar -xvf rice/Sweet-Dark-v40.tar.xz

# Move the theme to the appropriate directory
sudo mv Sweet-Dark-v40 /usr/share/themes

# Set the system theme
xfconf-query -c xsettings -p /Net/ThemeName -s "Sweet-Dark-v40"

# Make icons directory
mkdir ~/.icons

# Download the icon theme

# Extract the icon theme (assuming it's a compressed archive)
tar -xvf rice/candy-icons.tar.xz

# Move the icon theme to the appropriate directory
cp -r candy-icons/ /usr/share/icons

# Set the system icon theme
xfconf-query -c xsettings -p /Net/IconThemeName -s "candy-icons"