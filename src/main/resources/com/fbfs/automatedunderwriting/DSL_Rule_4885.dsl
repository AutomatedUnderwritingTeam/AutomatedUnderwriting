[when]There is a comp Loss Occurrence and Prior Loss within 48 months or 2 comp Loss Occurrences or 2 Prior Losses within 48 months or 2 comp Trap Auto Claims within 48 months=		
exists(
($lossOccurrenceSummary : LossOccurrenceSummary(eval(calculateMonths(dateOccurred, effectiveDate) <= 48)) and 
 ClaimSummary(incidentCode matches "(?i).*Comp(.||\r)*") from $lossOccurrenceSummary.claimSummaryList and
 PriorLoss(eval(calculateMonths(dateOfLoss, effectiveDate) <= 48), lossDescription1 matches "(?i).*Comp(.||\r)*" || lossDescription2 matches "(?i).*Comp(.||\r)*" )) 
or
Number( intValue > 1) from accumulate ( los : LossOccurrenceSummary(eval(calculateMonths(dateOccurred, effectiveDate) <= 48)) and 
 ClaimSummary(incidentCode matches "(?i).*Comp(.||\r)*") from los.claimSummaryList, count(los)) 
or
Number( intValue > 1) from accumulate ( pl : PriorLoss(eval(calculateMonths(dateOfLoss, effectiveDate) <= 48), lossDescription1 matches "(?i).*Comp(.||\r)*" || lossDescription2 matches "(?i).*Comp(.||\r)*" ), count(pl)) or
      			(TrapClueAutoReport( clueAutoReport : clueAutoReport) and  
 	   			Number( intValue > 1) from accumulate ( autoClaim : AutoClaim ( claimDate : date, claimPaymentList: claimPaymentList, eval(calculateMonths(claimDate, effectiveDate) <= 48), eval(totalAutoClaimPayments(claimPaymentList) > 0), claimType matches "(?i).*Comprehensive(.||\r)*") from clueAutoReport.autoClaimList, count(autoClaim))))
