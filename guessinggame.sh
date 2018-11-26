flag_good=1

function guess {
echo "How many files are in current directory:"
read response
if [[ $response -eq {ls | wc -l} ]]
then
echo "Congratulations/! You've guessed correct number of files in this directory"
flag_good=0
elif [[ $response -lt {ls | wc -l} ]]
then
echo "Too low, try more, try again"
flag_good=1
else [[ $response -gt {ls | wc -l} ]]
then 
echo "Too much, try less, try again"
flag_good=1
fi
}

while [[ $flag_good -ne 0 ]]
do
 command guess
done


