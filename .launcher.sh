#!/bin/bash

# @author Herman Ciechanowiec, herman@ciechanowiec.eu
# This program is a Shell script for Linux Ubuntu. Its purpose is to provide
# an easy-to-use and convenient tool to launch IntelliJ IDEA from a terminal.
# For more information checkout https://github.com/ciechanowiec/intellij_launcher

# ============================================== #
#                                                #
#                   FUNCTIONS                    #
#                                                #
# ============================================== #

verifyIfLauncherExists () {
launcherPath=/snap/intellij-idea-community/current/bin/idea.sh
	if [ ! -f $launcherPath ]
	then
		printf "\e[1;91m[ERROR]:\e[0m The IntelliJ IDEA launcher \e[3m$launcherPath\e[0m hasn't been detected. The script has stopped.\n\n"
		exit
	fi
}

verifyIfZeroOrOneArgument () {
	if [ $# != 0 ] && [ $# != 1 ] 
	then
		printf "\e[1;91m[ERROR]:\e[0m The command should be provided with zero or exactly one argument which is the path to the existing folder. In the first case IntelliJ IDEA will be opened for the current folder and in the second case it will be opened for the folder specified by a user.\n\n"
		exit
	fi
}

verifyIfGivenDirectoryExists () {
	requestedDirectory=$1
	if [ ! -d $requestedDirectory ]
        then
                printf "\e[1;91m[ERROR]:\e[0m The directory \e[3m$requestedDirectory\e[0m doesn't exist. The script has stopped.\n\n"
		exit
        fi
}

idea() {
	if [ $# = 0 ] 
	then	
		nohup /snap/intellij-idea-community/current/bin/idea.sh nosplash . 2>/dev/null &
		# can be replaced by:
		# nohup intellij-idea-community nosplash . > /dev/null 2>&1 &
	elif [ $# = 1 ]
	then
		specifiedFolder=$1
		nohup /snap/intellij-idea-community/current/bin/idea.sh nosplash $specifiedFolder 2>/dev/null &
		# can be replaced by:
		# nohup intellij-idea-community nosplash $specifiedFolder > /dev/null 2>&1 &
	else
		echo "\e[1;91m[ERROR]:\e[0m Unknown problem occurred. The script has stopped.\n\n"
		exit

	fi
}

# ============================================== #
#                                                #
#                  DRIVER CODE                   #
#                                                #
# ============================================== #

verifyIfLauncherExists
verifyIfZeroOrOneArgument $@
verifyIfGivenDirectoryExists $@
idea $@
