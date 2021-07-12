function cleanUp($path) {
    if ($path -notmatch '\\$') {
        $dir += '\'
    }
    
    $dirs = Get-ChildItem $path -directory -recurse | Where-Object { (Get-ChildItem $_.fullName).count -eq 0 } | Select-Object -expandproperty FullName
    $dirs | Foreach-Object { Remove-Item $_ }

}

function deleteFiles($path, $days, $hours, $minutes) {
    if ($path -notmatch '\\$') {
        $dir += '\'
    }
    $files = @(Get-ChildItem -Path $path -Recurse -ErrorAction SilentlyContinue)
    $timespan = new-timespan -days $days -hours $hours -minutes $minutes

    foreach ($i in $files) {
        if (((get-date) - $i.LastWriteTime) -gt $timespan) {
            Remove-Item $i.FullName -Recurse -Force -ErrorAction SilentlyContinue
        }
        
    }
    cleanUp($path)

}


