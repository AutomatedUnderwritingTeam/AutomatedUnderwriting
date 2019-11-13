[when]The change is back dated more that 29 days or there are prior water losses=		exists(
			(DM_CurrentTransaction (tranEffectiveDate : effectiveDate, creationDate : creationDate ) and
			 eval(calculateDaysBetween(tranEffectiveDate, creationDate) > 29)) or	
(	
$lossOccurrenceSummary : LossOccurrenceSummary(eval(calculateMonths(dateOccurred, effectiveDate) <= 60)) and 
ClaimSummary(incidentCode matches "(?i).*WATER(.||\r)*") 

)or 
			PriorLoss(eval(calculateMonths(dateOfLoss, effectiveDate) <= 60), lossDescription1 matches "(?i).*WATER(.||\r)*" || lossDescription2 matches "(?i).*WATER(.||\r)*" ) or 
			(TrapCluePropertyReport( cluePropertyReport : cluePropertyReport) and
			 PropertyClaim ( claimDate : date, eval(calculateMonths(claimDate, effectiveDate) <= 48), claimType matches "(?i).*WATER(.||\r)*") from cluePropertyReport.propertyClaimList)
			 )
