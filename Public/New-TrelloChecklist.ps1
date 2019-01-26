function New-TrelloChecklist {
    param($CheckListName, $CardId)

    if (($CardId -eq $null) -and ($Global:TrelloCard -ne $null)) { $CardId = $Global:TrelloCard.Id; }

    $checklist = (Invoke-WebRequest -Method POST -Uri "https://api.trello.com/1/checklists?idCard=$CardId&name=$CheckListName&$Global:TrelloAuthQS").Content | ConvertFrom-Json
    if ($checklist -ne $null) { $Global:TrelloChecklist = $checklist; }
    return $checklist
}