#! /bin/bash -x

declare -A Dict

#print welcome message
echo "Welcome in FlipCoinCombination"

read -p "Enter the option
	1.Singlet " select

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
#call the function
Percentage


