Connect-ExchangeOnline 
Import-CSV C:\Users\Justin.Mercado\Documents\DLIST.CSV | foreach {  
 $UPN=$_.UPN 
 Write-Progress -Activity "Adding $UPN to group… " 
 Add-DistributionGroupMember –Identity trainingcohort1@oakviewgroup.com -Member $UPN  
 If($?)  
 {  
 Write-Host $UPN Successfully added -ForegroundColor Green 
 }  
 Else  
 {  
 Write-Host $UPN - Error occurred –ForegroundColor Red  
 }  
} 