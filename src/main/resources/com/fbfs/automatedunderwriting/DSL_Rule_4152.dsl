[when]R4152 The SPP Amount of Insurance increased or the SPP has had a claim in the last 24 months =	

(
(ScheduledPersonalProperty( unitAtRiskNumber == $unitAtRiskNumber, amountInsured > previousAmountInsured) ) 
or 
(
ScheduledPersonalProperty( unitAtRiskNumber == $unitAtRiskNumber, added == true ) and 
Coverage(coverageNumber == coverageNumber, limit1 > previousLimit1)
)
or
(
LossOccurrenceSummary(eval(calculateMonths(dateOccurred, new Date()) <= 24), $claimSummaryList : claimSummaryList) and
ClaimSummary(unitAtRiskNum == $unitAtRiskNumber) from $claimSummaryList 

)
)