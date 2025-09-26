sudo apt update -y
sudo apt upgrade -y
sudo apt install curl -y
sudo apt install xorg -y
sudo apt install i3 -y 
cd ~
wget https://ziglang.org/download/0.13.0/zig-linux-x86_64-0.13.0.tar.xz
tar xf zig-linux-x86_64-0.13.0.tar.xz
echo 'export PATH="$HOME/zig-linux-x86_64-0.14.1:$PATH"' >> ~/.bashrc
source ~/.bashrc
sudo apt install build-essential libpam0g-dev libxcb-xkb-dev xauth xserver-xorg brightnessctl -y
git clone https://codeberg.org/fairyglade/ly.git
cd ly
make

