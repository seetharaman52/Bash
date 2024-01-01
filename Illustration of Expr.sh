function sum() {
sum=$(expr $1 + $2)
echo $sum
}

echo "Addition is : " $(sum 1 2)
# addition=$(sum 1 2)
# echo "Addition is : $addition"