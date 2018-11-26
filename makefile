readme.md : guessinggame.sh
	echo "Title: GuessingGame.sh" > readme.md
	date -u >> readme.md
	cat guessinggame.sh | wc -l >> readme.md	
