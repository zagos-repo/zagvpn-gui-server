#!/bin/bash
zenity --info --text="Installing WireGuard and Zenity..."
sudo apt update && sudo apt install -y wireguard zenity
zenity --info --text="Installation complete! Run 'bash zagvpn-gui.sh' to start."
