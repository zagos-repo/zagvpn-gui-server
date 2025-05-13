#!/bin/bash

clear
echo -e "\e[1;36m==============================="
echo -e "     ZagOS Defender VPN"
echo -e "===============================\e[0m"
echo ""
echo -e "\e[1;33mChoose your VPN server:\e[0m"
echo "1) France 🇫🇷"
echo "2) Germany 🇩🇪"
echo "3) Canada 🇨🇦"
echo "4) Morocco 🇲🇦"
echo "5) Belgium 🇧🇪"
echo "6) USA 🇺🇸"
echo "7) Russia 🇷🇺"
echo "8) Ukraine 🇺🇦"
echo "9) Turkey 🇹🇷"
echo "10) Italy 🇮🇹"
echo "0) Exit"

read -p "Enter your choice [0-10]: " choice

CONFIG_DIR="./configs"

case $choice in
    1) conf="$CONFIG_DIR/france.conf" ;;
    2) conf="$CONFIG_DIR/germany.conf" ;;
    3) conf="$CONFIG_DIR/canada.conf" ;;
    4) conf="$CONFIG_DIR/morocco.conf" ;;
    5) conf="$CONFIG_DIR/belgium.conf" ;;
    6) conf="$CONFIG_DIR/usa.conf" ;;
    7) conf="$CONFIG_DIR/russia.conf" ;;
    8) conf="$CONFIG_DIR/ukraine.conf" ;;
    9) conf="$CONFIG_DIR/turkey.conf" ;;
    10) conf="$CONFIG_DIR/italy.conf" ;;
    0) echo "Bye!"; exit 0 ;;
    *) echo "Invalid choice!"; exit 1 ;;
esac

echo -e "\n\e[1;32mConnecting to VPN...\e[0m"
sudo wg-quick up "$conf"
echo -e "\e[1;32mConnected successfully!\e[0m"
