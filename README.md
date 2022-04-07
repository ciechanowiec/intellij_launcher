# IntelliJ IDEA Terminal Launcher

## Table of Contents
1. [Basic Info](#Basic-Info)
2. [Functionalities](#Functionalities)
3. [Script's Algorithm](#Scripts-Algorithm)
4. [How to Use](#How-to-Use)
5. [Screenshots](#Screenshots)
6. [License](#License)

## Basic Info
This program is a Shell script for Linux Ubuntu. Its purpose is to provide 
an easy-to-use and convenient tool to launch IntelliJ IDEA from terminal.
| Parameter                   | Data                                             |
| :-------------------------: | :----------------------------------------------: |
| Program name:               | IntelliJ IDEA Terminal Launcher                  |
| Date of creation:           | April 2022                                       |
| Technologies used:          | Shell, Linux Ubuntu                              |
| Author:                     | Herman Ciechanowiec <br/> herman@ciechanowiec.eu |
| License:                    | MIT No Attribution License                       |

## Functionalities
The script has the following features:
1. Simple and fast launch of IntelliJ IDEA using short terminal command.
2. No output by IntelliJ IDEA to the terminal after the IntelliJ IDEAit is launched. The terminal remains clean.
3. After IntelliJ IDEA launching, the terminal isn't blocked and can accept new commands.
4. Closure of the terminal doesn't cause the closure of IntelliJ IDEA.
5. Suppressing of splash screen when loading IntelliJ IDEA.
6. Handling invalid launch.

## Script's Algorithm
The script is executed according to the following algorithm:
1. Check whether a native IntelliJ IDEA run script exists (_/snap/intellij-idea-community/current/bin/idea.sh_).
2. Check whether the command was provided with zero or exactly one argument which is the path to the existing folder. In the first case IntelliJ IDEA will be opened for the current folder and in the second case it will be opened for the folder specified by a user.
3. Check whether the provided by a user path to the folder for which IntelliJ IDEA should be opened does exist.
4. Launch IntelliJ IDEA.

## How to Use
To use the script complete the following steps:
1. Put the script file (`.launcher.sh`) to the home folder so that its path will be `~/.launcher.sh`
2. Give the script the permission to be run (`chmod 755 ~/.launcher.sh`).
3. Set up the following alias for the terminal (on Linux Ubuntu aliases are usually specified in the hidden file `~/.bashrc`):<br>
`alias idea='~/.launcher.sh'`
4. Now the IntelliJ IDEA Terminal Launcher can be run by invoking the `idea` command.

## Screenshots
<kbd><img src="presentation/1.png"></kbd><br/>

## License
The program is subject to MIT No Attribution License

Copyright © 2022 Herman Ciechanowiec

Permission is hereby granted, free of charge, to any person obtaining a copy of this
software and associated documentation files (the "Software"), to deal in the Software
without restriction, including without limitation the rights to use, copy, modify,
merge, publish, distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so.

The Software is provided "as is", without warranty of any kind, express or implied,
including but not limited to the warranties of merchantability, fitness for a
particular purpose and noninfringement. In no event shall the authors or copyright
holders be liable for any claim, damages or other liability, whether in an action
of contract, tort or otherwise, arising from, out of or in connection with the
Software or the use or other dealings in the Software.
