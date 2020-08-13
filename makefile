all: guessinggame.sh README.md

README.md:
	echo "# Unix File Guessing Game" > README.md
	echo "### Built on:" >> README.md
	date >> README.md
	echo "" >> README.md
	echo "### Number of lines in guessinggame.sh (including headers):" >> README.md
	wc -l < guessinggame.sh >> README.md

clean:
	rm README.md
