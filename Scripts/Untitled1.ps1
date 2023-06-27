$x=Get-content "C:\temp\temp2.txt"
for ($i=0; $i -lt $x.Count; $i++)

{Add-DistributionGroupMember -Identity "Field HR Staff" -member $x[$i] 

If($?)
{
Write-Host $x[$i] Successfully Changed -ForegroundColor Green
}
Else
{
Write-Host $x[$i] - Error Occured -ForegroundColor Red
}
} 
