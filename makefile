README.md:
	touch README.md
	printf "The guessing game" >> README.md
	printf "\nThis file is created on " >> README.md
	date >> README.md
	printf "\nThe number of lines is " >> README.md
	wc -l guessinggame.sh >> README.md
