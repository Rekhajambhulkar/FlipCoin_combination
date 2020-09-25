#! /bin/bash -x

#print welcome message
echo "Welcome in FlipCoinCombination"

#Using RANDOM Find head or tail
choice=$((RANDOM%2))

if [ $choice -eq 1 ]
then
	echo "Head"
else
	echo "Tail"
fi
