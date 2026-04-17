#this commit is just for make commit

#read -p "student manager " students
#while true 

#read -p "Add show search Exit " students
#echo $students >> students.txt
## grep	Searching for content inside files	grep "error" access.log
##echo "Searching for a student 	grep "student name" students.txt "

#read -p "enter a name " name
read -p "what is your age " age
#read -p "type one of the following options (add student-show-search-exit) " options
if [ $age -lt 18 ]; then
	echo "Student is Minor (not saved) "
else
	while true 
	do
	read -p "type one of the following options (add-show-search-exit) " options
	if [ $options = "add" ]; then
		read -p "enter your name " name
		read -p "enter your age " age
		echo $name " - " $age >> students.txt
	elif [ $options = "show" ]; then
		cat students.txt
	
#	while true
#	do
	elif [ $options = search ]; then
		read -p "type your name to find your age in database " search
		if grep -i "$search" students.txt; then echo ""
		elif
			echo "Not Found"
		fi
	else [ "$options" = "exit" ]
	#	exit 1
		break
	fi
	done
			

fi

#To display the contents of a file in Bash use     cat students.txt


