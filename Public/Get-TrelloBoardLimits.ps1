
# $content = (Invoke-WebRequest "https://api.trello.com/1/boards/$($Global:TrelloBoard.id)/?fields=limits&$Global:TrelloAuthQS").Content | ConvertFrom-Json

