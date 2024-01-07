# 若要安裝模組的最新公開版本
Install-Module -Name Teams
#連結Teams
Connect-MicrosoftTeams
#連結Exchange
Connect-ExchangeOnline

# Import the required module
Import-Module -Name Teams

# Define the team name
$teamName = "營運國外出差日報 Y24Q1"

# Get the team's Group ID
$team = Get-Team -DisplayName $teamName
$groupId = $team.GroupId

$TeamUsers = Import-Csv -Path "C:\Temp\test1.csv"
$TeamUsers | ForEach-Object {
    Add-TeamUser -GroupId $groupId -User $_.Email
    Write-host "Added User:"$_.Email -f Green
}
