function Get-TrelloCustomFieldOptions {
    param($CustomFieldId)

    return (Invoke-WebRequest -Uri "https://api.trello.com/1/customfield/$CustomFieldId/options?$Global:TrelloAuthQS").Content | ConvertFrom-Json
}
