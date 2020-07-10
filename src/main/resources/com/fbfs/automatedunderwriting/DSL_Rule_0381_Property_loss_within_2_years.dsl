[when]R0381 There are property losses within last 2 years=

(		
($lossOccurrenceSummary : LossOccurrenceSummary(eval(calculateMonths(dateOccurred, new Date()) <= 24)) and
ClaimSummary(lineOfBusiness == "PRPL") from $lossOccurrenceSummary.claimSummaryList)

or
(PriorLoss(eval(calculateMonths(dateOfLoss, new Date()) <= 24), lineOfBusiness == "PRPL", lossDescription1 != null, lossDescription1 > "" ) )

or

(PriorLoss(eval(calculateMonths(dateOfLoss, new Date()) <= 24), lineOfBusiness == "PRPL", lossDescription2 != null, lossDescription2 > "" ) )			   
or	
		
(TrapCluePropertyReport( cluePropertyReport : cluePropertyReport) and
PropertyClaim (eval(calculateMonths(date, new Date()) <= 24), claimType != null, claimType > "") from cluePropertyReport.propertyClaimList)
or 
	
(TrapCluePropertyReport( cluePropertyReport : cluePropertyReport) and
propertyClaim : PropertyClaim (eval(calculateMonths(date, new Date()) <= 24)) from cluePropertyReport.propertyClaimList and
PropertyClaimPayment(claimCode != null, claimCode > "") from propertyClaim.claimPaymentList)
or

(TrapCluePropertyReport( cluePropertyReport : cluePropertyReport) and
propertyClaim : PropertyClaim (eval(calculateMonths(date, new Date()) <= 24)) from cluePropertyReport.propertyClaimList and
PropertyClaimPayment(claimDesc != null, claimDesc > "") from propertyClaim.claimPaymentList)
)