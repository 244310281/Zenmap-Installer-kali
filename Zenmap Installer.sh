# install ZenMap7.92 to Kali 5.10 by2021.9
# for Mikey ;from mRr3b00t ;from FernGuardado
#update repo info
sudo apt update

#Install dependency package
wget http://archive.ubuntu.com/ubuntu/pool/universe/p/pygtk/python-gtk2_2.24.0-5.1ubuntu2_amd64.deb
sudo dpkg -i python-gtk2_2.24.0-5.1ubuntu2_amd64.deb
wget http://azure.archive.ubuntu.com/ubuntu/pool/universe/p/pygobject-2/python-gobject-2_2.28.6-14ubuntu1_amd64.deb
sudo dpkg -i python-gobject-2_2.28.6-14ubuntu1_amd64.deb
wget http://security.ubuntu.com/ubuntu/pool/universe/p/pycairo/python-cairo_1.16.2-2ubuntu2_amd64.deb
sudo dpkg -i python-cairo_1.16.2-2ubuntu2_amd64.deb

#download the RPM from nmap
wget -q https://nmap.org/dist/zenmap-7.92-1.noarch.rpm
#Install ALIEN to convery RPM to dpkg
sudo apt install alien
#onvert thec RPM
sudo alien zenmap-7.92-1.noarch.rpm
#install the debian installer file for zenmap
sudo dpkg -i zenmap_7.92-2_all.deb