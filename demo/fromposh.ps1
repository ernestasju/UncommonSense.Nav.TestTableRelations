. 'C:\Program Files\Microsoft Dynamics NAV\90\Service\NavAdminTool.ps1'

$ServerInstance = 'MicrosoftDynamicsNavServer$DynamicsNAV90'
$CompanyName = 'CRONUS International Ltd.'
$AnalysisCodeunitID = 50010
$AnalysisMethodName = 'AnalyseAllTables'
$VerificationCodeunitID = 50011
$VerificationMethodName = 'CallVerifyAllTableRelations_ToConsole'

Write-Progress -Activity 'Analysing table relations'
Invoke-NAVCodeunit `
    -CompanyName $CompanyName `
    -CodeunitId $AnalysisCodeunitID `
    -MethodName $AnalysisMethodName `
    -ServerInstance $ServerInstance

Write-Progress -Activity 'Verifying table relations'
Invoke-NAVCodeunit `
    -CompanyName $CompanyName `
    -CodeunitId $VerificationCodeunitID `
    -MethodName $VerificationMethodName `
    -Argument $LogFileName `
    -ServerInstance $ServerInstance