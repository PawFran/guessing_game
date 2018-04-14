true_file_nr=$(ls | wc -l)

function compare {
	local let guessed_file_nr=$1
	if [[ guessed_file_nr -eq true_file_nr ]] ; then
		echo 0
	elif [[ guessed_file_nr -gt true_file_nr ]] ; then
		echo 1
	else
		echo -1
	fi
}

while read -p "how many files are in the current directory ? " guess
do
	is_correct=$(compare $guess)
	if [[ is_correct -eq 0 ]] ; then
		echo correct !
		exit 0
	elif [[ is_correct -gt 0 ]] ; then
		echo too high
	else 
		echo too low
	fi
done
