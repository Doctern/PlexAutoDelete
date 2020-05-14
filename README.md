# PlexAutoDelete
Powershell script to manage Plex directory.

## DESCRIPTION
Script to keep a minimum number of videos for a TV show, irrespective of whether watched or not.

I use **youtube dl** to get videos from my subscribed channels, which are organised as TV shows based on the channel. This script ensures that there is a minimum number of videos for me to watch.

## INSTALLATION
1. Open script.ps1 file.
2. Enter the number of files you want to keep in each folder for the $keep variable.
3. Change .mp4 to the extension you want.
4. Remove '-WhatIf' from the end after testing the script.
5. Open list.txt file, and enter the folder paths, each on a new line.
6. Search for 'Task Scheduler' app and open it.
7. Click on 'Create Basic Task' and cofigure it according to your preference.
8. Select 'Start a program' for Action.
9. Enter 'powershell' for the program box, and '-File "path to script.ps1"' for Argument. (without quotation marks).
