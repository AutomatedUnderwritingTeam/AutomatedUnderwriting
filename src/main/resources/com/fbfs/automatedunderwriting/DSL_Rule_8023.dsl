[when]R8023: The policy has either a Trap or FB loss more than $10K with the last 36 months=		exists(
($lossOccurrenceSummary : LossOccurrenceSummary(eval(calculateMonths(dateOccurred, effectiveDate) <= 36)) and 
$claimSummary : ClaimSummary() from $lossOccurrenceSummary.claimSummaryList and 
PaymentRecoverySummary(netAmount > 10000) from $claimSummary.paymentRecoverySummaryList) or
	(TrapClueAutoReport( clueAutoReport : clueAutoReport) and
 	 AutoClaim ( claimDate : date, claimPaymentList: claimPaymentList, eval(calculateMonths(claimDate, effectiveDate) <= 36), eval(totalAutoClaimPayments(claimPaymentList) > 10000)) from clueAutoReport.autoClaimList) or
 	(TrapCluePropertyReport( cluePropertyReport : cluePropertyReport) and
 	 PropertyClaim ( claimDate : date, claimPaymentList: claimPaymentList, eval(calculateMonths(claimDate, effectiveDate) <= 36), eval(totalPropertyClaimPayments(claimPaymentList) > 10000)) from cluePropertyReport.propertyClaimList))
