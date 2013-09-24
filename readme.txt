This script (diff.sh) written for Linux looks through all directories adjacent to it (ignoring non-directories), call this the 'base' directories.
It then loops through each directory inside those (call these 'id' directories), looking for files named 0-9 inside them (with no extension).
It compares each file with a matching file name (0 to 9) one at a time to every file with a matching name in all the 'id' subdirectories.

The idea:
	1. You have class sections.
	2. You have students in those sections.
	3. Each student has programs they've submitted which you've compiled (possibly with the compile.sh script) starting at number 1.
	4. You want to check each program against every other students programs of the same name to make sure nobody is submitting another's work.
	
Feel free to suggest changes to the script, I'm fairly new at Linux and scripting so this is just a start (trying to make work a little easier).
