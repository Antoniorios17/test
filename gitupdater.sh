#!/bin/bash

echo "=====================";
echo "Welcome to GitUpdater";
echo "=====================";
echo "Please select one of the options";
echo "";
echo "1) Update all files";
echo "2) Update a specific file";
echo "";
read -p "--->" answer;

case $answer in
	1) git add --all;;
	2) echo "Please enter the file name with the extension"
		read -p ">>>  " file
		git add "$file"
		;;
	*) echo "Invalid answer" 
		;; 
esac

echo "Please add the your commit message"
read -p ">>>" message;


git commit -m "$message";
