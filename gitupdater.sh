#!/bin/bash
echo ""
echo "=====================";
echo "Welcome to GitUpdater";
echo "=====================";
echo ""
echo "Please select one of the following options";
echo "";
echo "1) Update all files";
echo "2) Update a specific file";
echo "";
read -p "---> " answer;


case $answer in
	1) git add --all ;;
	2) echo "Please enter the file name with the extension" && ls
		read -p "--->  " file
		git add "$file"
		;;
	*) echo "Invalid answer " && exit 
		;; 
esac

echo "Please add the your commit message";
read -p "--->" message;
git commit -m "$message";
social='[0-9]\{3\}-\{0,1\}[0-9]\{2\}-\{0,1\}[0-9]\{4\}'
#directory=$(pwd)
for file in * ;
do if [[ $(grep $social $file) != ""  ]]; 
	then 
	echo "************************"
	echo "*                      *"	
	echo "*        WARNING       *"
	echo "*                      *"
	echo "************************"
	echo ""
	echo "$file has sensitive data" 
	echo "Please remove all sensitive data from $file"
	exit 1
	fi;
done

git push origin main;
