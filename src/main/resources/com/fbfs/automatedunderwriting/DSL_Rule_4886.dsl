[when]There is a collision Prior Loss within 48 months or a collision P3 Loss within 48 months or a collision Trap Auto Claim within 36 months=
		exists(
($lossOccurrenceSummary : LossOccurrenceSummary(eval(calculateMonths(dateOccurred, effectiveDate) <= 48)) and
ClaimSummary(incidentCode matches "(?i).*Coll(.||\r)*") from $lossOccurrenceSummary.claimSummaryList
)
or
			   PriorLoss(eval(calculateMonths(dateOfLoss, effectiveDate) <= 48), lossDescription1 matches "(?i).*Coll(.||\r)*" || lossDescription2 matches "(?i).*Coll(.||\r)*" ) or	
			  (TrapClueAutoReport( clueAutoReport : clueAutoReport) and  
		 		AutoClaim ( claimDate : date, eval(calculateMonths(claimDate, effectiveDate) <= 36), claimType matches "(?i).*Collision(.||\r)*") from clueAutoReport.autoClaimList) )
