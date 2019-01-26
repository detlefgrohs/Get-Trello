function Get-TrelloCustomField {
    param($FieldName, $BoardId)

    return (Get-TrelloCustomFields $BoardId) | Where-Object { $_.name -eq $FieldName }
}