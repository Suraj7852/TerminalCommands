#!/bin/bash -x
for file in `ls *.txt`;
do
	folderName=`echo $file |awk -F. '{print $1}'`;
	if [ -d $folderName ];
	then
		rm -R $folderName;
	fi
		Date=$(date +%d%m%y);
		mkdir $folderName;
		cp $file $folderName$Date;
done
