#! /bin/bash

#flip coin simulation assignment

heads=1
tails=0
headTally=0
tailTally=0
limit=21

while [[ $headTally -lt $limit && $tailTally -lt $limit ]]
do
	flipCoin=$((RANDOM%2))
	if [[ $flipCoin -eq $heads ]]
	then
		headTally=$(($headTally+1))
	else
		tailTally=$(($tailTally+1))
	fi
done

if [[ $headTally -eq $tailTally ]]
then
	echo "Its a tie!"
elif [[ $headTally -gt $tailTally ]]
then
	diff=$(($headTally-$tailTally))
	echo "heads won by "$diff
else
	diff=$(($tailTally-$headTally))
	echo "tails won by "$diff
fi

