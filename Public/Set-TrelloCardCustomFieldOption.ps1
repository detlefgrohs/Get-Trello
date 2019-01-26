



function Set-TrelloCardCustomFieldOption {
    param($CustomFieldName, $Value, $CardId)

    if (($CardId -eq $null) -and ($Global:TrelloCard -ne $null)) { $CardId = $Global:TrelloCard.Id; }

    $cf = Get-TrelloCustomField $CustomFieldName
    $cfoption = Get-TrelloCustomFieldOption $Value $cf.id

    $json = @{
      "idValue" = $cfoption._id;
      "key" = $Global:TrelloApiKey;
      "token"= $Global:TrelloApiToken
    } | ConvertTo-Json

    $response = Invoke-WebRequest -Uri "https://api.trello.com/1/card/$CardId/customField/$($cf.id)/item" `
        -Method PUT -Body $json -Headers @{ "Content-Type" = "application/json" }


}
