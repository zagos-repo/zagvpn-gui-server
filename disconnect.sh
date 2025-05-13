#!/bin/bash
echo -e "\e[1;31mDisconnecting VPN...\e[0m"
sudo wg-quick down
echo -e "\e[1;32mDisconnected.\e[0m"
