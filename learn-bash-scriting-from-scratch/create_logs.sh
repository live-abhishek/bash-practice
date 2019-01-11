#!/bin/bash

# Generate to-do lists


function generate_logs {
	local month_name=$1
	local days=$2
	local confirm

	echo "The directory ./logs/$month_name will be created"
	echo "It will contain $days text entries"
	printf "Is this correct [y/n]"
	read confirm

	if [ "$confirm" == "y" ]; then
		echo "[i] Checking if previous file exists..."

		if [ ! -d "./logs/$month_name" ]; then
			mkdir "./logs/$month_name"
		fi

		if [ $(ls ./logs/$month_name | wc -l) -ne 0 ]; then
			echo "[!] There are non-empty files in the directory! Aborting"
			exit
		else
			echo "[i] Directory empty, generating logs..."
		fi
	elif [ "$confirm" == "n" ]; then
		echo "[i] Exiting"
	else
		echo  "[i] Not recognized, exiting"
	fi

}

if [[ -n "$1" && -n "$2" ]]; then
	if [ ! -d "./logs" ]; then
		mkdir ./logs
	fi

	generate_logs $1 $2
elif [ "$1" == "-h" ]; then
	echo "Usage:"
	echo "./create_logs.sh <month_name> <days_to_generate>"
	echo "Info:"
	echo -e "  Creates a directory called ./logs/<month_name>"
	echo -e "  Generate <days_to_generate> log text files containing to-do lists"
else
	echo "Type ./create_logs.sh -h for help"
fi
