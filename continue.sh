for i in {5..10}
do
if [ $i -eq 9 ] || [ $i -eq 10 ]
then
continue
fi
echo $i
done