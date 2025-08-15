$ErrorActionPreference="continue"
$Source = "H:\"
$Destination = "\\10.11.22.174\f$\BKP_FULL_FILE\BKP_FULL\"
$Date = Get-Date -format M
$LogFile = "C:\SCRIPT\Logs\$Date-BACKUP-FULL_log.txt"
Get-Date | Out-File $LogFile -Append
echo "ORIGEM:$Source" | Out-File $LogFile -Append
Get-ChildItem $Source | Measure-Object -property length -sum | echo | Out-File "C:\SCRIPT\Logs\$Date-BACKUP-FULL_log.txt" -Append
echo "CÓPIA INICIADA" | Out-File $LogFile -Append
echo "           " | Out-File $LogFile -Append

Get-ChildItem $Source | ForEach-Object {
Try
{
$FilePath = $_.fullname
Copy-Item -Recurse $FilePath -Destination $destination -force 
$FilePath | Out-File $LogFile -Append
} 
Catch
{
echo "ERRO AO COPIAR $FilePath" | Out-File $LogFile -Append
}
}

echo "           " | Out-File $LogFile -Append
echo "           " | Out-File $LogFile -Append
echo "FIM DE CÓPIA" | Out-File $LogFile -Append
echo "           " | Out-File $LogFile -Append
echo "DESTINO:$Destination" | Out-File $LogFile -Append
Get-ChildItem $Destination | Measure-Object -property length -sum | echo | Out-File $LogFile -Append
Get-Date | Out-File $LogFile -Append