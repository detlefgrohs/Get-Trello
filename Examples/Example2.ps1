
Import-Module -Name "$PSScriptRoot/../../ImportExcel/ImportExcel"

Remove-Module Get-Trello -ErrorAction SilentlyContinue
Import-Module -Name "$PSScriptRoot/../Get-Trello" #-Verbose

. "$PSScriptRoot/ApiKeys.ps1"

Set-TrelloApiValues $apikey $apitoken


$board = Get-TrelloBoard 'Test Board'
$list = Get-TrelloList 'Pending'



$exceldata = Import-Excel "$PSScriptRoot/Trello.xlsx"



$exceldata[0]."Trello ID" = [System.Guid]::NewGuid().ToString();



$exceldata | Export-Excel "$PSScriptRoot/Trello1.xlsx"

