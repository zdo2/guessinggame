#!/usr/bin/env bash
# File: guessinggame.sh

function message {
	if [[ $1 -eq $2 ]]
then
	echo "Congratulations, you win!"
elif [[ $1 -gt $2 ]]
then
	echo "Sorry, you guessed too high. Try again."
else
	echo "Sorry, you guessed too low. Try again."
fi
}
num_files=$(ls -1  | wc -l)
echo "How many files are in this directory?"
guess=0
while [[ $guess -ne $num_files ]]
do
  read guess
  message $guess $num_files
done
