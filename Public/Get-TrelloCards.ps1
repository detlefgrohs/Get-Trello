function Get-TrelloCards {
    param($ListId)

    if (($ListId -eq $null) -and ($Global:TrelloList -ne $null)) { $ListId = $Global:TrelloList.Id; }

    return ,((Invoke-WebRequest -Uri "https://api.trello.com/1/lists/$ListId/cards?customFieldItems=true&$Global:TrelloAuthQS").Content | ConvertFrom-Json)
}
