#! /bin/bash -x

declare -A Dict

#print welcome message
echo "Welcome in FlipCoinCombination"

read -p "Enter the option
	1.Singlet
	2.Doublet 
	3.Triplet " select

#Using RANDOM Find head or tail
Flip()
{
	choice=$((RANDOM%2))
	echo $choice
}

Flip

if [ $choice -eq 1 ]
then
	echo "Tail"
else
	echo "Head"
fi

#use function to calculate percentage
Percentage()
{
	range=$1
	for keyCount in ${Dict[@]}
	do
		Dict[keyCount]=`echo "scale=4; $(Dict[$ketCount])/$range*100"`;
		echo "Percentage of $keyCount is: ${Dict[$keyCount]}"
	done
}

sorting()
{
	for val in ${!Dict[@]}
	do
		echo $val '-' ${Dict[$val]}
	done

sort -rm -k3
}

Triplet()
{
flip=0
head=0
tail=0
range=$1
option=$2

for((count1=1;count1<=$range;count1++))
do
	for((count2=1;count2<=$option;count2++))
	do
		result="$(Flip)"
		if [ $result == $flip ]
		then
			coin=H
			((head++))
		else
			((tails++))
			coin=T
		fi
	done

((Dict[$coin]""))
coin=""

done


echo "Heads count:" $head
echo "Tails count:" $tail

echo ${!Dict[@]}
echo ${Dict[@]}

echo "$(Percentage $range)"
echo "$sorting"
echo "Winner is:" $(sorting | head -1)"
}

if (($select > 0 && $select < 4))
then
	echo "$(triplet $range $select)"
else
	echo "wrong choice"
fi
