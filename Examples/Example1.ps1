
Remove-Module Get-Trello -ErrorAction SilentlyContinue
Import-Module -Name "$PSScriptRoot/../Get-Trello" #-Verbose

. "$PSScriptRoot/ApiKeys.ps1"

Set-TrelloApiValues $apikey $apitoken


$board = Get-TrelloBoard 'Test Board'
$list = Get-TrelloList 'Pending'

$card = New-TrelloCard 'Name from API' 'Description from API'

Set-TrelloCardCustomFieldOption 'CATEGORY' 'UI'
Set-TrelloCardCustomFieldText 'TABLE NAME' 'Actual_Stage'

$checklist = New-TrelloChecklist 'Attributes to Add'
New-TrelloChecklistItem 'HH Income' | Out-Null
New-TrelloChecklistItem 'HH Income Source' | Out-Null
New-TrelloChecklistItem 'HH Income Date' | Out-Null

#Get-TrelloCards
