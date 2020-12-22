[when]R4933 There are Dwelling storm hail or wind losses more than 2 years newer than the roof year or the roof year is 8 years older than the effective date year  =		
	(
	
$lossOccurrenceSummary : LossOccurrenceSummary($dateOccurred : dateOccurred	)
and
(eval(calculateDwellingAge($roofYear, $dateOccurred) > 2))
 and 
(($claimSummary: ClaimSummary(incidentCode matches "(?i).*STORM(.||\r)*", coverageCode == "STRUC", causeCode matches "(?i).*HAIL(.||\r)*", unitAtRiskNum == unitAtRiskNumber) from $lossOccurrenceSummary.claimSummaryList) or
($claimSummary: ClaimSummary(incidentCode matches "(?i).*STORM(.||\r)*", coverageCode == "STRUC", causeCode matches "(?i).*WIND(.||\r)*", unitAtRiskNum == unitAtRiskNumber) from $lossOccurrenceSummary.claimSummaryList)))
or 
(eval(calculateDwellingAge($roofYear, $expirationDate) > 8))
	
