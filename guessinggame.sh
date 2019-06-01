#!/usr/bin/env bash
clear
declare -i numFiles
numFiles=$(find . -maxdepth 1 -not -type d | wc --lines)

function makeValidGuess{
	until read -p "Enter the number of files in current directory:  " guess;
	[[ "$guess" =~ ^[0-9]+$ ]]; do
	echo -e "\nEnter the valid number\n"
	done
}

function congratulations {
	echo -e "\nCongratulations! Answer $numFiles is correct!"
}

function low {
        echo -e "\nToo low. Try again."
}

function high {
        echo -e "\nToo high. Try again."
}

while makeValidGuess; do
	if (( guess < numFiles )); then
		low

	elif (( guess > numFiles )); then
		high	
	else
		congrats
		exit

	fi

done
