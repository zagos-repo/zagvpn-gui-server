#!/bin/bash
echo -e "\e[1;34mInstalling dependencies...\e[0m"
sudo apt update && sudo apt install -y wireguard curl
echo -e "\e[1;32mDone! You can now run 'bash zagvpn.sh'\e[0m"
