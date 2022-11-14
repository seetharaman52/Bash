read -p "username : " username
read -sp "password : " password
if [ $((password)) == 2802 ]; then 
echo -e "\nYou're in !"
else
echo -e "You entered Wrong password"
fi
