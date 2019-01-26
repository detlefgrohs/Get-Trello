function New-TrelloChecklistItem {
    param($CheckListItemName, $ChecklistId)

    if (($ChecklistId -eq $null) -and ($Global:TrelloChecklist -ne $null)) { $ChecklistId = $Global:TrelloChecklist.Id; }

    return (Invoke-WebRequest -Method POST -Uri "https://api.trello.com/1/checklists/$ChecklistId/checkitems?name=$CheckListItemName&$Global:TrelloAuthQS").Content | ConvertFrom-Json
}
