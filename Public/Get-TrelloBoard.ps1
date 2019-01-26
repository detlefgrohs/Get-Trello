
function Get-TrelloBoard {
    param($BoardName)

    $board = (Get-TrelloBoards) | Where-Object { $_.name -eq $BoardName }
    if ($board -ne $null) { $Global:TrelloBoard = $board }
    return $board
}
