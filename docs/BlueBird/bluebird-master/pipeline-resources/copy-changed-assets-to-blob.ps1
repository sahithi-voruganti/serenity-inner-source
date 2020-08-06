$branchname = $Env:CURRENTBRANCHNAME
Write-Host $branchname
cd bluebird
$Modifiedfile=git show --pretty="" --name-status
$Modifiedfile

$CurrentWorkingFolderPath=get-location
$destinationPath= 'fileblob'
$FilePathtoCopy=Join-Path -Path $CurrentWorkingFolderPath -ChildPath $destinationPath

Write-Host "##vso[task.setvariable variable=isuploadrequired]no"
Write-Host $FilePathtoCopy

foreach ($filename in $Modifiedfile)
{  
  #split by space to get commit mode and file name 
  $fileInfo = $filename -split '\t\s*' | ForEach-Object { "$_" }
  #mode
  $mode = $fileInfo[0]
  $mode
  $filePath = $fileInfo[1]
  $filePath
  if($mode -ne 'D')
  {
    git checkout $branchname  -- $filePath  
    $filePath
    $strVal ='bluebird-assets/'

    if($filePath.StartsWith($strVal))
    {
          Write-Host "##vso[task.setvariable variable=isuploadrequired]yes"
          Write-Host 'true'
          $joinpath=Join-Path -Path $CurrentWorkingFolderPath -ChildPath $filePath
          Write-Host $joinpath

          $varFilePath= Split-Path -Path $joinpath 
          Write-Host $varFilePath 

          $joinpathtarget=Join-Path -Path $FilePathtoCopy -ChildPath $filePath
          Write-Host $joinpathtarget

          $varFilePathtarget= Split-Path -Path $joinpathtarget 
          Write-Host $varFilePathtarget 

          If (Test-Path -Path $varFilePathtarget -PathType Container)
          {
             Write-Host "$path already exists" -ForegroundColor Red
          }
          ELSE
          { 
            New-Item -Path $varFilePathtarget  -ItemType directory            
          }

             Copy-Item $joinpath -Destination $varFilePathtarget  

    } 
  }

}
Write-Host "Using isuploadrequired: $($env:isuploadrequired)"









