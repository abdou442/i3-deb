sudo apt update -y
sudo apt upgrade -y
sudo apt install curl
sudo apt install xorg -y
sudo apt install i3 -y 
wget https://ziglang.org/download/index.html
tar -xvf zig-version.tar.xz
sudo mv zig-version/ /usr/local/bin/
zig version
sudo apt install build-essential libpam0g-dev libxcb-xkb-dev xauth xserver-xorg brightnessctl -y
git clone https://codeberg.org/fairyglade/ly.git
cd ly
zig build
zig build installexe -Dinit_system=systemd
sudo systemctl enable ly.service

