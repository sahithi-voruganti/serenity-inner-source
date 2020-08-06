# Get inputs.
$buildSource = $Env:BUILD_SOURCESDIRECTORY
$githubserver = $Env:GITHUBSERVER #'github.mmm.com'
$githuborg = $Env:GITHUBORG #'MMM'
$githubusername = $Env:GITHUBUSERNAME #'a#'
$githubemail = $Env:GITHUBEMAIL #'a#@mmm.com'
$repositoryname = $Env:REPOSITORYNAME #'Repo Name'
$commitMessage = $Env:COMMITMESSAGE #'Example'
$toBranchName = $Env:BRANCHNAME #'gh-pages'
$fromBranchName = $Env:BUILD_SOURCEBRANCHNAME
$defaultWorkingDirectory = $Env:SYSTEM_DEFAULTWORKINGDIRECTORY
$storageaccountname = $Env:STORAGEACCOUNTNAME
$storageaccountkey = $Env:STORAGEACCOUNTKEY 
$blobcontainername = $Env:BLOBCONTAINERNAME
$branchname = $Env:CURRENTBRANCHNAME
$sastoken = $ENV:SASTOKEN
cd bluebird


#checkout the documentation folder
git checkout $branchname -- documentation
#goto documentation
cd documentation
#run replace url script on urls
$lsFiles=dir -Recurse | Select-String -pattern "\(bluebird-assets/"
$lsFiles
$count=$lsFiles.length
$count

write-host "##vso[task.setvariable variable=listOfFiles]$lsFiles"
if($count -gt 0)
{
    $count
   

    foreach($file in $lsFiles){
        $file.Path    
        if($file.Filename.Contains(".md")){
            $fileContent = get-content -Path $file.Path
            #get the relative path of the asset from current file line e.g. (bluebird-assets/iot/1.png) returns iot/1.png
            $relPath = [regex]::match($file.Line,'\(bluebird-assets/([^\)]+)\)').Groups[1].Value
            $relPath
            $sastoken
            $a = "bluebird-assets/$relPath"
            $a
            $b = "https://$storageaccountname.blob.core.windows.net/$blobcontainername/$relPath$sastoken"
            $b
            #$fileContent
            $fileContentNew = $fileContent.replace($a,$b)
            $fileContentNew | Set-Content $file.Path
            #$fileContentNew
        }
    }
}