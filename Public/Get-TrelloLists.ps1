function Get-TrelloLists {
    param($BoardId)

    if (($BoardId -eq $null) -and ($Global:TrelloBoard -ne $null)) { $BoardId = $Global:TrelloBoard.Id; }

    return ,((Invoke-WebRequest -Uri "https://api.trello.com/1/boards/$BoardId/lists?$Global:TrelloAuthQS").Content | ConvertFrom-Json)
}
