
function Get-TrelloBoards {
    [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
    return ,((Invoke-WebRequest -Uri "https://api.trello.com/1/members/me/boards?$Global:TrelloAuthQS").Content | ConvertFrom-Json)
}