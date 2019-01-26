
function Get-TrelloList {
    param($ListName, $BoardId)

    $list = (Get-TrelloLists $BoardId) | Where-Object { $_.name -eq $ListName }
    if ($list -ne $null) { $Global:TrelloList = $list }
    return $list
}
