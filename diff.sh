#!/bin/bash
# goes thru each directory, then each subdirectory (section/uin) checking (cmp function)
# all files named a number (0 to 9 if they exist) against every section/uin file 0-9
# (looking for cheating / duplicate file submissions in all sections)

#exec > diff.log 2>&1    # will output to a diff.log file if enabled

for section in ./*; do
	if [ -d $section ]; then
		echo "----------------------------------------------"$section;
		for uin1 in $section/*; do
			echo "student: "$uin1;
			for pr1 in {0..9}; do
				
				# inner loop
				for sec_next in ./*; do
					if [ -d $sec_next ]; then
						for uin2 in $sec_next/*; do
							if [ -f $uin1/$pr1 ] && [ -f $uin2/$pr1 ] && [ $uin1 != $uin2 ]; then
								if (cmp -s $uin1/$pr1 $uin2/$pr1 0) then
									echo "......"$uin2"..."$pr1"..................WARNING!!";
								fi
								# echo "......compare:"$uin1/$pr1" to "$uin2/$pr1;
							fi
						done
					fi
				done
				
			done
		done
	fi
done