Get-AZContext
$storageaccountname = $Env:STORAGEACCOUNTNAME
$storageaccountkey = $Env:STORAGEACCOUNTKEY 
$blobcontainername = $Env:BLOBCONTAINERNAME

$StgContext = New-AzStorageContext -StorageAccountName $storageaccountname -StorageAccountKey $storageaccountkey

$StartTime = Get-Date
$EndTime = $startTime.AddYears(1)


$SasToken = New-AzStorageContainerSASToken -Name $blobcontainername -Context $StgContext -Permission rl -StartTime $StartTime -ExpiryTime $EndTime
Write-Host $SasToken
Write-Host "##vso[task.setvariable variable=sastoken]$SasToken"