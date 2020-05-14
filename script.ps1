$ErrorActionPreference = 'SilentlyContinue'
$keep = #Number of files that you want to keep in the folder
$paths = Get-Content -Path @("list.txt")#Add the folder paths to this text file.
for($i = 0; $i -lt $paths.Length; $i++){
Get-ChildItem -Path $paths[$i] -Recurse -Include *.mp4 | Sort-Object CreationTime -Descending | Select-Object -Last ((Get-ChildItem -Path $paths[$i] -Recurse -Include *.mp4).Count - $keep) | ForEach-Object { Remove-Item $_ -WhatIf}
}