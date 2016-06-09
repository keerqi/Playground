#Define the Symbols will be used in the express
$ArraySymbols = "+","-",""
$i1 = 0
$i2 = 0
for ($i1 -eq 0;$i1 -le 2;$i1 ++){
    $P1 = $ArraySymbols[$i1]
    for ($i2 -eq 0;$i2 -le 2;$i2 ++){
        $P2 = $ArraySymbols[$i2]
        $Expression = "1"+"$P1"+"2"+"$P2"+"3"
        Write-Host $Expression
        $i1
        $i2
    }
    $Expression = "1"+"$P1"+"2"+"$P2"+"3"
    Write-Host $Expression
}
#Merge 1 and 2 with all possible
$ArrayInputs = @("1")
$strNumber = "2"
$ArrayOutputs = @()
$ArrayInputs |%{
    write-host "This is $ArrayInput"
    $strAdd = "$_+$strNumber"
    $ArrayOutputs += $strAdd
    $strMinus = "$_-$strNumber"
    $ArrayOutputs += $strMinus
    $strJoint = "$_$strNumber"
    $ArrayOutputs += $strJoint
}
#Merge 3 with all possible
$ArrayInputs = $ArrayOutputs
$strNumber = "3"
$ArrayOutputs = @()
$ArrayInputs |%{
    write-host "This is $ArrayInput"
    $strAdd = "$_+$strNumber"
    $ArrayOutputs += $strAdd
    $strMinus = "$_-$strNumber"
    $ArrayOutputs += $strMinus
    $strJoint = "$_$strNumber"
    $ArrayOutputs += $strJoint
}
#Merge 4 with all possible
$ArrayInputs = $ArrayOutputs
$strNumber = "4"
$ArrayOutputs = @()
$ArrayInputs |%{
    write-host "This is $ArrayInput"
    $strAdd = "$_+$strNumber"
    $ArrayOutputs += $strAdd
    $strMinus = "$_-$strNumber"
    $ArrayOutputs += $strMinus
    $strJoint = "$_$strNumber"
    $ArrayOutputs += $strJoint
}
#Merge 5 with all possible
$ArrayInputs = $ArrayOutputs
$strNumber = "5"
$ArrayOutputs = @()
$ArrayInputs |%{
    write-host "This is $ArrayInput"
    $strAdd = "$_+$strNumber"
    $ArrayOutputs += $strAdd
    $strMinus = "$_-$strNumber"
    $ArrayOutputs += $strMinus
    $strJoint = "$_$strNumber"
    $ArrayOutputs += $strJoint
}
#Merge 6 with all possible
$ArrayInputs = $ArrayOutputs
$strNumber = "6"
$ArrayOutputs = @()
$ArrayInputs |%{
    write-host "This is $ArrayInput"
    $strAdd = "$_+$strNumber"
    $ArrayOutputs += $strAdd
    $strMinus = "$_-$strNumber"
    $ArrayOutputs += $strMinus
    $strJoint = "$_$strNumber"
    $ArrayOutputs += $strJoint
}
#Merge 7 with all possible
$ArrayInputs = $ArrayOutputs
$strNumber = "7"
$ArrayOutputs = @()
$ArrayInputs |%{
    write-host "This is $ArrayInput"
    $strAdd = "$_+$strNumber"
    $ArrayOutputs += $strAdd
    $strMinus = "$_-$strNumber"
    $ArrayOutputs += $strMinus
    $strJoint = "$_$strNumber"
    $ArrayOutputs += $strJoint
}
#Merge 8 with all possible
$ArrayInputs = $ArrayOutputs
$strNumber = "8"
$ArrayOutputs = @()
$ArrayInputs |%{
    write-host "This is $ArrayInput"
    $strAdd = "$_+$strNumber"
    $ArrayOutputs += $strAdd
    $strMinus = "$_-$strNumber"
    $ArrayOutputs += $strMinus
    $strJoint = "$_$strNumber"
    $ArrayOutputs += $strJoint
}
#Merge 9 with all possible
$ArrayInputs = $ArrayOutputs
$strNumber = "9"
$ArrayOutputs = @()
$ArrayInputs |%{
    $strAdd = "$_+$strNumber"
    $ArrayOutputs += $strAdd
    $strMinus = "$_-$strNumber"
    $ArrayOutputs += $strMinus
    $strJoint = "$_$strNumber"
    $ArrayOutputs += $strJoint
}
#Caculate results
$Expression = $ArrayOutputs
$Expression |%{$Target = Invoke-Expression $_
    if($Target -eq 100){
        Write-Host -ForegroundColor Green $_
    }
}
