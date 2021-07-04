#!/bin/sh
# this script peeks into each directory and updates it using svn or git if possible

for dir in `ls -A`;
do
	if [ -d "$dir/.svn" ];
	then
		echo "====== Updating $dir ..."
		cd $dir
		svn upgrade
                svn cleanup
		svn update 
		cd ..
		echo
	elif [ -e "$dir/.git" ];
	then
		echo "====== Updating $dir ..."
		cd $dir
                git branch -l | grep -q master && git pull origin master || git pull origin main
		cd ..
		echo
	elif [ -d "$dir/.hg" ];
	then
		echo "====== Updating $dir ..."
		cd $dir
		hg pull && hg update
		cd ..
		echo
	fi	
done
