function Delete-TrelloCard {
    param([string]$CardId)

    Invoke-WebRequest -Method DELETE -Uri "https://api.trello.com/1/cards/$($CardId)?$Global:TrelloAuthQS"
}