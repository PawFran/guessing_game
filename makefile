app: 
	printf "## Guessing game\n" > readme.md
	printf "date and time when makefile was run: " >> readme.md
	date '+%Y-%m-%d %H:%M:%S' >> readme.md
	printf '' >> readme.md
	printf "number of lines of code in guessinggame.sh: " >> readme.md
	cat guessinggame.sh | wc -l >> readme.md
