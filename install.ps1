$repositoryUrl = "https://github.com/72-S/WinTroy/archive/master.zip"
$downloadPath = "$HOME\Documents\WinTroy.zip"
$extractPath = "$HOME\Documents\WinTroy"
$subfolderName = "WinTroy-main"

Invoke-WebRequest -Uri $repositoryUrl -OutFile $downloadPath
Add-Type -AssemblyName System.IO.Compression.FileSystem
[System.IO.Compression.ZipFile]::ExtractToDirectory($downloadPath, $extractPath)
$fullPath = Join-Path -Path $extractPath -ChildPath $subfolderName
Set-Location -Path $fullPath
Start-Process -FilePath "inst.bat" -NoNewWindow -Wait
exit
