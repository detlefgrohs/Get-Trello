
function Set-TrelloApiValues {
    param($ApiKey, $ApiToken)
    $Global:TrelloApiKey = $ApiKey
    $Global:TrelloApiToken = $ApiToken
    $Global:TrelloAuthQS = "key=$ApiKey&token=$ApiToken"
}
