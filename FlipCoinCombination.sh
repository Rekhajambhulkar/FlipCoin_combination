#! /bin/bash -x

declare -A Dict

#print welcome message
echo "Welcome in FlipCoinCombination"

read -p "Enter the option" Singlet

#Using RANDOM Find head or tail

function Flip()
{
	choice=$((RANDOM%2))
	echo $choice
}

if [ $choice -eq 1 ]
then
	echo "Head"
else
	echo "Tail"
fi

#use function to calculate percentage
function Percentage()
{
	range=$1
	for keyCount in ${Dict[@]}
	do
		Dict[keyCount]=`echo "scale=4; $(Dict[$ketCount])/$range*100"}`
	done
}
