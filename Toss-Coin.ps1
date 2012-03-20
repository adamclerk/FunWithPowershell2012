function Toss-Coin{
    param(
        [alias("w")]
        [switch]$words
    )
    $rand = New-Object System.Random
    $number = $rand.next(1,9)
    $digit = [System.Convert]::ToString($number)[0]
    $odd = $digit % 2
    if($words)
    {
        if($odd -eq 1)
        {
            "HEADS"
        }
        else
        {
            "TAILS"
        }
    }
    else
    {
        $odd
    }
}