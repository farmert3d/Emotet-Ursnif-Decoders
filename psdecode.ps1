#psdecode

$input = Read-Host -Prompt 'Base64 Text'
$decodeThis = $(New-Object IO.StreamReader ($(New-Object

IO.Compression.DeflateStream($(New-Object IO.MemoryStream(,

$([Convert]::FromBase64String($input)))),

[IO.Compression.CompressionMode]::Decompress)),

[Text.Encoding]::ASCII)).ReadToEnd();

Write-Host "######################################################"
echo $decodeThis