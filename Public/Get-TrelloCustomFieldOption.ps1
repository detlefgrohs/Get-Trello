function Get-TrelloCustomFieldOption {
    param($FieldName, $CustomFieldId)

    return (Get-TrelloCustomFieldOptions $CustomFieldId) | Where-Object { $_.value.text -eq $FieldName }
}