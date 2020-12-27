#! /bin/bash

#flip coin simulation assignment

heads=1
tails=0
headTally=0
tailTally=0

for ((i=0; i<10; i++))
do
	flipCoin=$((RANDOM%2))
	if [[ $flipCoin -eq $heads ]]
	then
		headTally=$(($headTally+1))
	else
		tailTally=$(($tailTally+1))
	fi
done

echo "number of times heads won : "$headTally
echo "number of times tails won : "$tailTally

