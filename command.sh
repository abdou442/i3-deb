sudo apt update -y
sudo apt upgrade -y
sudo apt install curl -y
sudo apt install xorg -y
sudo apt install i3 -y 
cd ~
sudo apt install build-essential python3 perl default-jdk -y
curl -sS https://debian.griffo.io/EA0F721D231FDD3A0A17B9AC7808B4DD62C41256.asc | sudo gpg --dearmor --yes -o /etc/apt/trusted.gpg.d/debian.griffo.io.gpg
echo "deb https://debian.griffo.io/apt $(lsb_release -sc) main" | sudo tee /etc/apt/sources.list.d/debian.griffo.io.list
sudo apt update
sudo apt install zig
sudo apt install build-essential libpam0g-dev libxcb-xkb-dev xauth xserver-xorg brightnessctl -y
git clone https://codeberg.org/fairyglade/ly.git
cd ~/ly
make
make install 
sudo systemctl enable ly
