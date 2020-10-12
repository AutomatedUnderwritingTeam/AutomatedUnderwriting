[when]There are no Dwelling storm hail or wind losses within the last {yearVariable} years =		not (
	
$lossOccurrenceSummary : LossOccurrenceSummary(eval(calculateMonths(dateOccurred, expirationDate) <= ({yearVariable} * 12 + 2)))

 and 
(($claimSummary: ClaimSummary(incidentCode matches "(?i).*STORM(.||\r)*", coverageCode == "STRUC", causeCode matches "(?i).*HAIL(.||\r)*", unitAtRiskNum == unitAtRiskNumber) from $lossOccurrenceSummary.claimSummaryList) or
($claimSummary: ClaimSummary(incidentCode matches "(?i).*STORM(.||\r)*", coverageCode == "STRUC", causeCode matches "(?i).*WIND(.||\r)*", unitAtRiskNum == unitAtRiskNumber) from $lossOccurrenceSummary.claimSummaryList)))





