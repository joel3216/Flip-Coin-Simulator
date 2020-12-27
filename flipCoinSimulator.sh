#! /bin/bash

#flip coin simulation assignment

heads=1
tails=0

flipCoin=$((RANDOM%2))

if [[ $flipCoin -eq $heads ]]
then
	winner="heads"
else
	winner="Tails"
fi

echo "winner is "$winner
