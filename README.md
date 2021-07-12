# Powershell CleanUp Script

## This script will delete old files and empty directories in a given path:

## How to Use: 

### 1. Download the Script

```
wget https://github.com/marekbeckmann/Delete-Old-Files-and-Directories/archive/refs/heads/main.zip -OutFile "removeOldContent.zip"
Expand-Archive .\removeOldContent.zip -DestinationPath .\removeOldContent
``` 
### 2. Run the Script

You may provide the following parameters: 

* days => The days a file/directory has to be older than, to get deleted
* hours => The hours a file/directory has to be older than, to get deleted
* minutes => The seconds a file/directory has to be older than, to get deleted

For Example: 

```
deleteFiles -path "C:\Temp" -days 12 -hours 12 -minutes 12
```
