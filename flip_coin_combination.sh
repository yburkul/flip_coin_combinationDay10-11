#Flip coin combinatin

#flip the coin

tail=0
head=1
head_count=0
tail_count=0
for(( i=1 ; i<=10 ; i++ ))
do
  random_num=$((RANDOM%2))

if(( $random_num == 1 ))
then
    singlet[$i]="Head"
    ((head_count++))
elif (( $random_num == 0 ))
then
    singlet[$i]="Tail"
    (( tail_count++ ))
else
     exit
fi
done

#Storing values in dictionary & finding persentage of head & tail

echo ${single[@]}

head_persent=$(( $(($head_count / $i)) * 100 | bc ))
tail_persent=$(( $(($tail_count / $i)) * 100 | bc ))
echo "Head count: " $head_count
echo "Tail count: " $tail_count
echo "Head persentage in singlet combination:" $head_persent
echo "Tail persentage in singlet combination:" $tail_persent
