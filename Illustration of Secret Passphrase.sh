# To restrict length of string use read -n 6 -p "";
read -p "Enter your username : " username #for timed input use -t 5 username
read -sp "Enter the password : " password
if [ $((password)) == 2802 ]; then
echo -e "\nAccess granted !"
else
echo -e "\nAccess denied !"
fi