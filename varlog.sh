#!/bin/bash -x
for file in `ls *.1`;
do
	folderName=`echo $file |awk -F. '{print $1}'`;
	ext=`echo $file | awk -F.'print $2'`;
	Date=$(date +"%m%d%y");
	mv $file $folderName-$Date.$ext
done
