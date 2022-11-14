read -a array -p "Enter the elements of array : "
for n in ${array[*]};
do
echo "$n"
done