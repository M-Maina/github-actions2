$CurrentText = Get-Content -Path README.template.md -Raw
$UpdatedText = $CurrentText -replace '%%CURRENTTIME%%', (Get-Date -Format s)
$UpdatedText | Set-Content -Path README.md
