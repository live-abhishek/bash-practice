#!/bin/bash

function menu {
	echo "Choose a number from 1 to 3. q to quit."
	read input
	case $input in
		1) echo "You choose 1" 
			menu ;;
		2) echo "You choose 2"
			menu ;;
		3) echo "You choose 3"
		        menu ;;
		q|Q) echo "Quitting" 
			exit ;;
		*) echo "Not available"
			menu ;;
	esac
}
clear
menu

