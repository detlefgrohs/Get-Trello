
Import-Module -Name "$PSScriptRoot/../../ImportExcel/ImportExcel"

Remove-Module Get-Trello -ErrorAction SilentlyContinue
Import-Module -Name "$PSScriptRoot/../Get-Trello" #-Verbose

. "$PSScriptRoot/ApiKeys.ps1"

Set-TrelloApiValues $apikey $apitoken


$board = Get-TrelloBoard 'Test Board'
$list = Get-TrelloList 'Pending'



$exceldata = Import-Excel "$PSScriptRoot/Trello.xlsx" -WorksheetName "Trello Tasks"

# Row 2, Row 1 has the headers
# Have to quote the column becuase of the space in the header...
# Fill with a new GUID to test...
$exceldata[0]."Trello ID" = [System.Guid]::NewGuid().ToString();

# Outputting to an existing file that has formatting to show the data is updated and the
# formats are not lost...
$exceldata | Export-Excel "$PSScriptRoot/Trello1.xlsx" -WorksheetName "Trello Tasks"

