function New-TrelloCard {
    param($CardName, $CardDescription, $ListId)
        
    if (($ListId -eq $null) -and ($Global:TrelloList -ne $null)) { $ListId = $Global:TrelloList.Id; }

    $card = (Invoke-WebRequest -Method POST -Uri "https://api.trello.com/1/cards?idList=$ListId&name=$CardName&desc=$CardDescription&$Global:TrelloAuthQS").Content | ConvertFrom-Json
    if ($card -ne $null) { $Global:TrelloCard = $card; }
    return $card
}