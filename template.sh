#!/bin/bash

# @Zhikun Cai, Summer 2015
# This is a bash script to repeatedly create folders and then do something generic, e.g., submit batch jobs in cluster!

Tlist=`seq 300 10 380`
Plist=`seq 10 20 100`

files_to_be_changed=('npt1.mdp' 'npt2.mdp' 'md.mdp') 	# don't add comma ","

str1='hello'
str2="$str1 222"

for Ti in $Tlist; do
	for Pi in $Plist; do
		
		new_folder=(${Ti}K_${Pi}bar)
		
		mkdir $new_folder
		cd $new_folder
		
		for current_file in ${files_to_be_changed[@]}; do
			echo $str2 > $current_file
		done
		
		cd ..

	done
done


# powerful commands you surely need:
# grep, sed, awk

# also probably below commands:
# cat, cut, |, >, >>