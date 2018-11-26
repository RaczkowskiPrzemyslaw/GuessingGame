flag_good=1
numberOfFiles=$(ls | wc -l)
function guess {
	echo "How many files are in current directory:"
	read response
		if [[ $response -eq $numberOfFiles ]]
		then
		echo "Congratulations! You've guessed correct number of files in this directory"
		flag_good=0
		elif [[ $response -lt $numberOfFiles ]]
		then
		echo "Too low, try more, try again"
		flag_good=1
		else [[ $response -gt $numberOfFiles ]] 
		echo "Too much, try less, try again"
		flag_good=1
		fi
	}
while [[ $flag_good -ne 0 ]]
do
guess
done


