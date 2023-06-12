# Test request with API key

$url = 'https://url' 
$apiKey = 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'
Invoke-WebRequest -H @{'X-API-KEY' = $apiKey} -Method Get $url
