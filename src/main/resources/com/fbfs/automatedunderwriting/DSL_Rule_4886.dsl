[when]There are more than 1 Prior or P3 Collision Losses within 48 months or more than 1 collision Trap Auto Claim losses within 36 months=

	PriorLossCount : Number()
               from accumulate (
	 	       PriorLoss($dateOfLoss : dateOfLoss, eval(calculateMonths($dateOfLoss, effectiveDate) <= 48), status : status, lossDescription1 matches "(?i).*Coll(.||\r)*" || lossDescription2 matches "(?i).*Comp(.||\r)*"), 		
count(status))



    P3LossCount : Number() from accumulate ( los : LossOccurrenceSummary($dateOccurred : dateOccurred, eval(calculateMonths($dateOccurred, effectiveDate) <= 48)) and 
 ClaimSummary(incidentCode matches "(?i).*Coll(.||\r)*") from los.claimSummaryList, count(los))

((eval(PriorLossCount + P3LossCount > 1)) or

       			(TrapClueAutoReport( clueAutoReport : clueAutoReport) and  
 	   			Number( intValue > 1) 
				from accumulate ( autoClaim : AutoClaim ( claimDate : date, claimPaymentList: claimPaymentList, eval(calculateMonths(claimDate, effectiveDate) <= 36), 
				eval(totalAutoClaimPayments(claimPaymentList) > 0), claimType matches "(?i).*Collision(.||\r)*") from clueAutoReport.autoClaimList, count(autoClaim)))
	
	
	or
			  (TrapClueAutoReport( clueAutoReport2 : clueAutoReport) and  
		 		Number (intValue > 1) 
				from accumulate( autoClaim2 : AutoClaim ( claimDate2 : date, eval(calculateMonths(claimDate2, effectiveDate) <= 36), claimPaymentList2: claimPaymentList, 
				eval(totalAutoClaimPayments(claimPaymentList2) > 0)) from clueAutoReport2.autoClaimList and
				AutoClaimPayment(claimDesc matches "(?i).*Collision(.||\r)*") from claimPaymentList2, count(autoClaim2)) ) 
)
