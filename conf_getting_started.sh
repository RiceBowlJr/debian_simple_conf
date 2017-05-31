#!/bin/bash
########################################
### Tested for Debian 9 with Gnome 3 ###
########################################

# Great tuto to install and configure openbox : https://www.maketecheasier.com/configure-andcustomize-openbox/

# su
# usermod -aG sudo ricebowljr
# killall openbox

sudo apt-get update
sudo apt-get upgrade

# Graphical environment configuration

sudo apt-get install vim build-essential software-properties-common zip terminator gmrun tilda bzip2 redshift wget curl ldap-utils dnsutils apt-transport-https

echo "Choose /usr/bin/vim/basic, or die"
sudo update-alternatives --config editor

cp config/autostart/*.desktop ~/.config/autostart/
cp config/redshift.conf ~/.config/
cp .vimrc ~/

## Numix Theme
sudo apt-get install numix-gtk-theme numix-icon-theme
echo "Now you need to apply the theme in 'gnome-tweak-tool', lets do it now!"
gnome-tweak-tool

# Shortcuts and shits

## Page up and down to search in history commands
sudo sed --in-place -e 's/#"\\e\[5~": history-search-backward/"\\e\[5~": history-search-backward/g' /etc/inputrc
sudo sed --in-place -e 's/#"\\e\[6~": history-search-forward/"\\e\[6~": history-search-forward/g' /etc/inputrc

# Installation and configuration of other softwares

cd
mkdir -p ~/apps
mkdir -p ~/apps/deb

## Firefox
cd ~/apps
wget -O 'firefox-54.0a2.en-US.linux-x86_64.tar.bz2' 'https://download.mozilla.org/?product=firefox-aurora-latest-ssl&os=linux64&lang=en-US'
tar xjf firefox-54.0a2.en-US.linux-x86_64.tar.bz2
sudo mv firefox /opt/
sudo ln -s /opt/firefox/firefox /usr/bin/firefox

## Cryptomator
#cd ~/apps/deb
#wget -O 'cryptomator-1.2.3-amd64.deb' 'https://bintray.com/cryptomator/cryptomator-deb/download_file?file_path=cryptomator-1.2.3-amd64.deb'
#sudo dpkg -i cryptomator-1.2.3-amd64.deb
#
### Atom graphical text editor
#cd ~/apps/deb
#wget -O 'atom-amd64.deb' 'https://atom.io/download/deb'
#sudo dpkg -i atom-amd64.deb
#
### hubiC
#cd ~/apps/deb
#wget http://mir7.ovh.net/ovh-applications/hubic/hubiC-Linux/2.1.0/hubiC-Linux-2.1.0.53-linux.deb
#sudo dpkg -i hubiC-Linux-2.1.0.53-linux.deb

### KVM/Qemu
#cd
#sudo apt-get install qemu-kvm libvirt-clients libvirt-daemon virt-manager
#mkdir ~/cows
#echo "To edit storage pools and networks, you need to edit with 'virsh pool-edit mypool' or other utility using libvirt API."
#
## Docker
#sudo apt-get install ca-certificates gnupg2
#curl -fsSL https://download.docker.com/linux/debian/gpg | sudo apt-key add -
#sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/debian stretch stable edge"
#sudo apt-get update
#sudo apt-get install docker-ce
#echo "If the message \"Hello world\" is printed in few seconds, that proves that Docker is well installed"
#sudo docker run hello-world

## Misc utils
cd
sudo apt-get install openssh-server rsync vlc

# From there, add the new theme in obconf, the obt file is in the openbonx conf directory
wget http://i1.wp.com/abekislevitz.com/wp/wp-content/uploads/2013/10/OwlSpotting3.jpg
