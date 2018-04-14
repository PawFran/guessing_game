app: 
	printf "##Guessing game\n" > readme.md
	date '+%Y-%m-%d %H:%M:%S' >> readme.md
	cat guessinggame.sh | wc -l >> readme.md
