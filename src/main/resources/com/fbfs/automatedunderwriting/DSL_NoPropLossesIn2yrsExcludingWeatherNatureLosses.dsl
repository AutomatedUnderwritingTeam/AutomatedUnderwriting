[when]There are property losses within last 2 years excluding wind, hail, storm, quake, and flood =

(		
($lossOccurrenceSummary : LossOccurrenceSummary(eval(calculateMonths(dateOccurred, expirationDate) <= 24)) and
ClaimSummary(lineOfBusiness == "PRPL", incidentCode != "STORM") from $lossOccurrenceSummary.claimSummaryList)

or
(PriorLoss(eval(calculateMonths(dateOfLoss, expirationDate) <= 24), lineOfBusiness == "PRPL", lossDescription1 != null, lossDescription1 > "", lossDescription1 not matches "(?i).*Storm(.||\r)*" && lossDescription1 not matches "(?i).*Hail(.||\r)*" && lossDescription1 not matches "(?i).*Wind(.||\r)*"  && lossDescription1 not matches "(?i).*Quake(.||\r)*" && lossDescription1 not matches "(?i).*Flood(.||\r)*") )

or

(PriorLoss(eval(calculateMonths(dateOfLoss, expirationDate) <= 24), lineOfBusiness == "PRPL", lossDescription2 != null, lossDescription2 > "", lossDescription2 not matches "(?i).*Storm(.||\r)*" && lossDescription2 not matches "(?i).*Hail(.||\r)*" && lossDescription2 not matches "(?i).*Wind(.||\r)*"  && lossDescription2 not matches "(?i).*Quake(.||\r)*" && lossDescription2 not matches "(?i).*Flood(.||\r)*") )			   
or	
		
(TrapCluePropertyReport( cluePropertyReport : cluePropertyReport) and
PropertyClaim (eval(calculateMonths(date, expirationDate) <= 24), claimType != null, claimType > "", claimType not matches "(?i).*Storm(.||\r)*" && claimType not matches "(?i).*Hail(.||\r)*" && claimType not matches "(?i).*Quake(.||\r)*" && claimType not matches "(?i).*Flood(.||\r)*" && claimType not matches "(?i).*Wind(.||\r)*") from cluePropertyReport.propertyClaimList)

or
	
(TrapCluePropertyReport( cluePropertyReport : cluePropertyReport) and
propertyClaim : PropertyClaim (eval(calculateMonths(date, expirationDate) <= 24)) from cluePropertyReport.propertyClaimList and
PropertyClaimPayment(claimCode != null, claimCode > "", claimCode not matches "(?i).*Storm(.||\r)*" && claimCode not matches "(?i).*Quake(.||\r)*" && claimCode not matches "(?i).*Hail(.||\r)*" && claimCode not matches "(?i).*Flood(.||\r)*" &&  claimCode not matches "(?i).*Wind(.||\r)*") from propertyClaim.claimPaymentList)
or
(TrapCluePropertyReport( cluePropertyReport : cluePropertyReport) and
propertyClaim : PropertyClaim (eval(calculateMonths(date, expirationDate) <= 24)) from cluePropertyReport.propertyClaimList and
PropertyClaimPayment(claimDesc != null, claimDesc > "", claimDesc not matches "(?i).*Storm(.||\r)*" && claimDesc not matches "(?i).*Quake(.||\r)*" && claimDesc not matches "(?i).*Hail(.||\r)*" && claimDesc not matches "(?i).*Flood(.||\r)*" && claimDesc not matches "(?i).*Wind(.||\r)*") from propertyClaim.claimPaymentList)


)