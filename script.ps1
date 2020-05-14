$ErrorActionPreference = 'SilentlyContinue'
$keep = #Number of files to keep in the folder.
$path1 = Get-ChildItem -Path "" -Recurse -Include *.mp4 #Folder path
$path2 = Get-ChildItem -Path "" -Recurse -Include *.mp4 #Folder path
$path3 = Get-ChildItem -Path "" -Recurse -Include *.mp4 #Folder path
$files = $path1, $path2, $path3
for($i = 0; $i -lt $files.Length; $i++){
$files[$i] | 
Sort-Object CreationTime -Descending |
Select-Object -Last ($files[$i].Count - $keep) |
ForEach-Object { Remove-Item $_ -WhatIf}
}#Remove -WhatIf after testing the script.
