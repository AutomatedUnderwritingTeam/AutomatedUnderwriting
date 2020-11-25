[when]R8157 The change is back dated more that 29 days or there are prior water losses within 48 months=		

exists(DM_CurrentTransaction ($tranEffectiveDate : effectiveDate, $creationDate : creationDate ) and
eval(calculateDaysBetween($tranEffectiveDate, $creationDate) > 29)) 
or	
(	
$lossOccurrenceSummary : LossOccurrenceSummary(eval(calculateMonths(dateOccurred, effectiveDate) <= 48)) and 
ClaimSummary(incidentCode matches "(?i).*WATER(.||\r)*") from $lossOccurrenceSummary.claimSummaryList
)
or 
(PriorLoss(eval(calculateMonths(dateOfLoss, effectiveDate) <= 48), lossDescription1 matches "(?i).*WATER(.||\r)*" || lossDescription2 matches "(?i).*WATER(.||\r)*" ) )
or 
(TrapCluePropertyReport( $cluePropertyReport : cluePropertyReport) and
PropertyClaim ( claimDate : date, eval(calculateMonths(claimDate, effectiveDate) <= 48), claimType matches "(?i).*WATER(.||\r)*") from $cluePropertyReport.propertyClaimList)
or
(TrapCluePropertyReport( $cluePropertyReport2 : cluePropertyReport) and
PropertyClaim ( claimDate : date, eval(calculateMonths(claimDate, effectiveDate) <= 48), $claimPaymentList2 : claimPaymentList) from $cluePropertyReport2.propertyClaimList and
ClaimPayment (claimDesc matches "(?i).*WATER(.||\r)*") from $claimPaymentList2)
