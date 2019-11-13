[when]There is a Loss Occurrence Summary or Prior Loss within 48 months of type PHY or a Trap Auto Claim within 48 months of type PHYSICAL=		
exists(
($lossOccurrenceSummary : LossOccurrenceSummary(eval(calculateMonths(dateOccurred, effectiveDate) <= 48)) and
ClaimSummary(incidentCode matches "(?i).*PRDAM(.||\r)*" ) from $lossOccurrenceSummary.claimSummaryList
)
or
			   PriorLoss(eval(calculateMonths(dateOfLoss, effectiveDate) <= 48), lossDescription1 matches "(?i).*PHY(.||\r)*" || lossDescription2 matches "(?i).*PHY(.||\r)*" ) or
			  (TrapClueAutoReport( clueAutoReport : clueAutoReport) and
				AutoClaim ( claimDate : date, eval(calculateMonths(claimDate, effectiveDate) <= 48), claimType matches "(?i).*Physical(.||\r)*") from clueAutoReport.autoClaimList))
