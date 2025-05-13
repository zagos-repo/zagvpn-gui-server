#!/bin/bash
(
echo "10" ; sleep 1
echo "# Disconnecting VPN..." ; sleep 1
echo "70" ; sudo wg-quick down > /dev/null 2>&1 ; sleep 1
echo "100" ; sleep 1
) | zenity --progress --title="ZagOS Defender VPN" --text="Disconnecting..." --percentage=0 --auto-close

if [ $? -eq 0 ]; then
    zenity --info --text="VPN Disconnected."
else
    zenity --error --text="Disconnection failed!"
fi
