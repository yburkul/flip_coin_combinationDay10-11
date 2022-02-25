#Flip coin combinatin

#flip the coin

tail=0
head=1

result=$((RANDOM%2))

if(($result==1))
then
    echo "head"
else
    echo "tail"
fi
