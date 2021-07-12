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
* exclude => Provide a String, if if a filename contains it, it won't be deleted
For Example: 

```
deleteFiles -path "C:\Temp" -days 12 -hours 12 -minutes 12
```

If you want to exclude certain content from being removed, you can use the `-exclude` option. 
Every File that has the keyword in its filename will then be skipped

For Example: 

```
deleteFiles -path "C:\Temp" -days 12 -hours 12 -minutes 12 -exclude "KEEP"
```

**This script does not bring up any prompts. Please be cautious about which filepaths you pass to the script, to prevent damaging your system**
