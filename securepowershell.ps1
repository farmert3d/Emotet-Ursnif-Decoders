#securepowershell

$key= (234..219)
$Secure = '76492d1116743f0423413b16050a5345MgB8AGEAN……….'
$Encrypted=ConvertTo-SecureString $Secure -key $key
$BSTR =[System.Runtime.InteropServices.Marshal]::SecureStringToBSTR

($Encrypted)
$ldf = [System.Runtime.InteropServices.Marshal]::PtrToStringAuto($BSTR)

echo $ldf