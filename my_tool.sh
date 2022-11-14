#enable and disable Conservation mode:
#execute this file in root mode!!
echo "Welcome to cigar's battery maintenance tool!"
echo "Note ----> Type '1' to turn on and '0' to turn off"
read -p "Do you wish to turn on or turn off battery conservation mode? " input
if [ $((input)) == 1 ]; then
echo 1 > /sys/bus/platform/drivers/ideapad_acpi/VPC2004:00/conservation_mode
echo "Successfully turned on the battery conservation mode!"
elif [ $((input)) == 0 ]; then
echo 0 > /sys/bus/platform/drivers/ideapad_acpi/VPC2004:00/conservation_mode
echo "Successfully turned off the battery conservation mod
