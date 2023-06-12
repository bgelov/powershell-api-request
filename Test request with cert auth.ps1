# Test request with cert auth
# powershell v. 7 required for SkipCertificateCheck param

$url = "https://localhost:8443/api/test?name=test"
$certStorePath = "Cert:\CurrentUser\My"
$certificate   = Get-ChildItem -Path $certStorePath | Where-Object {$_.Thumbprint -eq "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"}  
Invoke-WebRequest -Uri $url -UseBasicParsing -Certificate $certificate -SkipCertificateCheck
