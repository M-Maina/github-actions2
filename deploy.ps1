$StackName = 'awsvpcstack'
$TemplateBody = Get-Content -Path cft-vpc.yml -Raw

New-CFNStack -StackName $StackName -TemplateBody $TemplateBody
