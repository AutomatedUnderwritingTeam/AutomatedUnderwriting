[when]There is a P3, Prior, or Trap Comprehensive loss within 24 months=		
exists(
($lossOccurrenceSummary : LossOccurrenceSummary(eval(calculateMonths(dateOccurred, effectiveDate) <= 24)) and 
 ClaimSummary(incidentCode matches "(?i).*Comp(.||\r)*") from $lossOccurrenceSummary.claimSummaryList ) 
or

PriorLoss($dateOfLoss : dateOfLoss, lineOfBusiness == "VEH", eval(calculateMonths($dateOfLoss, effectiveDate) <= 24), lossDescription1 matches "(?i).*Comp(.||\r)*" || lossDescription2 matches "(?i).*Comp(.||\r)*" ) 
  
				
or
		  (TrapClueAutoReport( clueAutoReport2 : clueAutoReport) and  
		 		AutoClaim ( claimDate2 : date, eval(calculateMonths(claimDate2, effectiveDate) <= 24), claimPaymentList2: claimPaymentList, eval(totalAutoClaimPayments(claimPaymentList2) > 0)) from clueAutoReport2.autoClaimList and
				AutoClaimPayment(claimDesc matches "(?i).*Comprehensive(.||\r)*") from claimPaymentList2)     					
)
