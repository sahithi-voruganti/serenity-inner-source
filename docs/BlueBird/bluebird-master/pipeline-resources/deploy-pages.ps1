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

Write-Host "Cloning existing GitHub repository - Server: " + $githubserver

git config --global http.sslVerify false

git clone https://${githubusername}:$Env:GH_TOKEN@$githubserver/$githuborg/$repositoryname.git --branch=$toBranchName $defaultWorkingDirectory\ghpages --quiet

if ($lastexitcode -gt 0)
{
    Write-Host "##vso[task.logissue type=error;]Unable to clone repository - check username, access token and repository name. Error code $lastexitcode"
    [Environment]::Exit(1)
}

$to = $defaultWorkingDirectory + "\ghpages"
$from = $buildSource + "\site\*"
if ($fromBranchName -ne "master")
{
    $to = $to + "\branches\" + $fromBranchName
}

if (-Not (Test-Path $to))
{
    Write-Host "create path " + $to
    md -path $to
}

Write-Host "Copying new documentation into branch - from:" + $from + " to: " + $to

Copy-Item $from $to -recurse -Force

Write-Host "Committing the GitHub repository"

cd $defaultWorkingDirectory\ghpages
git config core.autocrlf false
git config user.email $githubemail
git config user.name $githubusername
git add *
git commit --allow-empty -m $commitMessage

if ($lastexitcode -gt 0)
{
    Write-Host "##vso[task.logissue type=error;]Error committing - see earlier log, error code $lastexitcode"
    [Environment]::Exit(1)
}

git push --quiet

if ($lastexitcode -gt 0)
{
    Write-Host "##vso[task.logissue type=error;]Error pushing to $toBranchName branch, probably an incorrect Personal Access Token, error code $lastexitcode"
    [Environment]::Exit(1)
}