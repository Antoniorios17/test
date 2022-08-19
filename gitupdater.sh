#!/bin/bash



echo "====================="
echo "Welcome to GitUpdater"
echo "====================="
echo "Please select one of the options"
echo ""
echo "1) Update all files"
echo "2) Update a specific file"
echo ""
read -p "--->";

case $answer in
	1) git add -all;;
	2)  ;;
	*) "Invalid answer" ;; 

esac
echo "Please select the file you would like to update"


