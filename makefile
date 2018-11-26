README.md : guessinggame.sh
	echo "Title: GuessingGame.sh" > README.md;
	date -u >> README.md;
	echo "Number of lines:" >> README.md;
	cat guessinggame.sh | wc -l >> README.md	
