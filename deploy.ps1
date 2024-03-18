$ErrorActionPreference = 'stop'

$StackName = 'awsvpcstack'
$TemplateBody = Get-Content -Path cft-vpc.yml -Raw

if ((Get-CFNStack -StackName)) {
Update-CFNStack -StackName $StackName -TemplateBody $TemplateBody
} else {
New-CFNStack -StackName $StackName -TemplateBody $TemplateBody
}
