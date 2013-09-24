#!/bin/bash

# program to compile all the projects if they are named correctly etc.
# uses c++11 and g++-4.7
# output is redirected to a compile.log file

exec > compile.log 2>&1
for dirs in ./*; do
	section=$(echo $dirs | cut -d"/" -f 2)
	echo "$section";
	for dirc in ./$dirs/* ; do
        	uin=$(echo $dirc | cut -d"/" -f 4)
        	uind=$(echo $uin | bc)
        	if [[ $uind -gt 0 ]] ; then

                	g++-4.7 -std=c++11 ./$section/$uin/hw1pr1.cpp -o ./$section/$uin/1
                	g++-4.7 -std=c++11 ./$section/$uin/hw1pr2.cpp -o ./$section/$uin/2
                	g++-4.7 -std=c++11 ./$section/$uin/hw1pr3.cpp -o ./$section/$uin/3
                	g++-4.7 -std=c++11 ./$section/$uin/hw1pr4.cpp -o ./$section/$uin/4

                	echo ">>>>>>>>>>>>>>>>>>>>>$uin";
        	fi
	done
done

