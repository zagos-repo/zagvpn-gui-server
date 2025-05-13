#!/bin/bash

CONFIG_DIR="./configs"

COUNTRIES=("France 🇫🇷" "Germany 🇩🇪" "Canada 🇨🇦" "Morocco 🇲🇦" "Belgium 🇧🇪" "USA 🇺🇸" "Russia 🇷🇺" "Ukraine 🇺🇦" "Turkey 🇹🇷" "Italy 🇮🇹")
CONFIG_FILES=("france.conf" "germany.conf" "canada.conf" "morocco.conf" "belgium.conf" "usa.conf" "russia.conf" "ukraine.conf" "turkey.conf" "italy.conf")

CHOICE=$(zenity --list --title="ZagOS Defender VPN" --column="Country" "${COUNTRIES[@]}" --height=400 --width=300)

if [ -z "$CHOICE" ]; then
    zenity --warning --text="No selection made. Exiting."
    exit 1
fi

for i in "${!COUNTRIES[@]}"; do
    if [[ "${COUNTRIES[$i]}" == "$CHOICE" ]]; then
        CONF="$CONFIG_DIR/${CONFIG_FILES[$i]}"
        break
    fi
done

(
echo "10" ; sleep 1
echo "# Preparing VPN configuration..." ; sleep 1
echo "40" ; sleep 1
echo "# Connecting to $CHOICE..." ; sleep 1
echo "70" ; sudo wg-quick up "$CONF" > /dev/null 2>&1 ; sleep 1
echo "100" ; sleep 1
) | zenity --progress --title="ZagOS Defender VPN" --text="Initializing..." --percentage=0 --auto-close

if [ $? -eq 0 ]; then
    zenity --info --text="Connected to $CHOICE successfully!"
else
    zenity --error --text="Failed to connect. Please check the configuration."
fi
