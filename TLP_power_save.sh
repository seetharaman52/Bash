#!/bin/bash
# TLP_ENABLE
echo "Welcome to cigar's TLP Powersaver script!"
echo "After performing the operation, reboot your device once!"
echo " ";
echo "Select the operation you need to perform";
echo "1.Turn on/off TLP";
echo "2.Turn on/off Sound Power Saving";
echo "3.Turn on/off Wifi Power Saving";
echo "4.Exit from menu";
echo -n "Enter your choice [1-4]: ";
while :
do
read choice
case $choice in
1) echo "You have selected option 1 - Turn on/off TLP."
echo "0 to Switch Off and 1 to Switch On"
read -p "Enter the value: " input_power
if [ $((input_power)) == 1 ]; then
echo TLP_ENABLE=1
echo "Enabled TLP Successfully!"
elif [ $((input_power)) == 0 ]; then
echo TLP_ENABLE=0
echo "Disabled TLP Successfully!"
fi
;;
2) echo "You have selected option 2 - Turn on/off Sound Power Saving."
echo "0 to Switch Off and 1 to Switch On"
read -p "Enter the value: " input_power_sound
if [ $((input_power_sound)) == 1 ]; then
echo SOUND_POWER_SAVE_ON_BAT=1
echo "Enabled SOUND_POWER_SAVE_ON_BAT!"
echo "Enabled TLP Successfully!"
elif [ $((input_power_sound)) == 0 ]; then
cho SOUND_POWER_SAVE_ON_BAT=0
echo "Disabled SOUND_POWER_SAVE_ON_BAT!"
fi
;;
3) echo "You have selected option 3 - Turn on/off Wifi Power Saving."
echo "0 to Switch Off and 1 to Switch On"
read -p "Enter the value: " input_power_wifi
if [ $((input_power_wifi)) == 1 ]; then
echo WIFI_PWR_ON_BAT=on
echo "Enabled WIFI_PWR_ON_BAT"
elif [ $((input_power_wifi)) == 0 ]; then
echo WIFI_PWR_ON_BAT=off
echo "Disabled WIFI_PWR_ON_BAT"
fi
;;
4) echo "You have selected option 4 - Exit from menu."
echo "Quitting..."
exit
;;
*) echo "Invalid operation";;
esac
echo -n "Enter your menu choice [1-4]: "
done