[when]There is a glass Prior Loss or Auto Claim within 36 months or a comp Prior Loss or Auto Claim with payment under $100=		 
exists(
($lossOccurrenceSummary : LossOccurrenceSummary(eval(calculateMonths(dateOccurred, effectiveDate) <= 36)) and 
($claimSummary : ClaimSummary (incidentCode matches "(?i).*GLAS(.||\r)*") from $lossOccurrenceSummary.claimSummaryList) and 
(PaymentRecoverySummary(netAmount > 0) from $claimSummary.paymentRecoverySummaryList))

or 
		 PriorLoss( dateOfLoss : dateOfLoss, lossDescription1 matches "(?i).*GLAS(.||\r)*" || lossDescription2 matches "(?i).*Glas(.||\r)*", eval(calculateMonths(dateOfLoss, effectiveDate) <= 36 )) or 
		 PriorLoss( dateOfLoss : dateOfLoss, lossDescription1 matches "(?i).*Comp(.||\r)*" || lossDescription2 matches "(?i).*Comp(.||\r)*", eval(calculateMonths(dateOfLoss, effectiveDate) <= 36 ), amountPaid > 0  && < 100 ) or 
		(TrapClueAutoReport( clueAutoReport : clueAutoReport) and  
		 (AutoClaim ( claimDate : date, claimPaymentList: claimPaymentList, eval(calculateMonths(claimDate, effectiveDate) <= 36), eval(totalAutoClaimPayments(claimPaymentList) > 0), claimType matches "(?i).*Glass(.||\r)*") from clueAutoReport.autoClaimList or
		  AutoClaim ( claimDate : date, claimPaymentList: claimPaymentList, eval(calculateMonths(claimDate, effectiveDate) <= 36), eval(totalAutoClaimPayments(claimPaymentList) > 0 && totalAutoClaimPayments(claimPaymentList) < 100), claimType matches "(?i).*Comprehensive(.||\r)*") from clueAutoReport.autoClaimList)))
