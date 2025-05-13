#!/bin/bash

# Zag OS VPN GUI - Advanced Version

# Check for Zenity
if ! command -v zenity &> /dev/null; then
    zenity --error --title="Zag OS VPN" --text="Zenity is not installed. Please run install-gui.sh first."
    exit 1
fi

# Display banner with logo and info
zenity --info --title="Zag OS VPN" --width=400 --height=250 --text="\n<b><big>Zag OS VPN</big></b>\n\nChoose a country to connect your secure VPN:\n\n<b>Secure & Fast | Powered by WireGuard</b>" --ok-label="Continue"

# Country selection with flags
COUNTRY=$(zenity --list --title="ZagOS Defender VPN" --column="Country" --width=400 --height=510 \
    "🇲🇦 Morocco" "🇫🇷 France" "🇩🇪 Germany" "🇷🇺 Russia" "🇧🇪 Belgium" "🇧🇬 Bulgaria" "🇨🇦 Canada" "🇺🇸 USA" "🇬🇧 UK")

if [ -z "$COUNTRY" ]; then
    zenity --warning --text="No country selected. Exiting."
    exit 1
fi

# Simulate progress
(
echo "10"; sleep 1
echo "# Preparing secure tunnel..."; sleep 1
echo "30"; sleep 1
echo "# Encrypting connection..."; sleep 1
echo "60"; sleep 1
echo "# Connecting to $COUNTRY..."; sleep 2
echo "100"; sleep 1
) | zenity --progress --title="Connecting to $COUNTRY" --percentage=0 --auto-close

# Simulate connection (demo only)
zenity --notification --window-icon="info" --text="Zag OS VPN connected to $COUNTRY"
zenity --info --title="Connection Established" --width=300 --text="You are now securely connected via VPN to\n<b>$COUNTRY</b>\n\nYour IP address is protected."

exit 0
