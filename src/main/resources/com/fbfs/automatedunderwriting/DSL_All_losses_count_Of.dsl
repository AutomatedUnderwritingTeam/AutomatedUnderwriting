[when] There are more than {thresholdOfLosses} P3, Prior, or Trap Losses of type {typeOfLoss} within {num} months = 

	
	
	PriorLossCount : Number()
               from accumulate (
	 	       PriorLoss(calculateMonths(dateOfLoss, effectiveDate) <= {num}, status: status, lossDescription1 soundslike "{typeOfLoss}" ), 		
count(status))

	

	
	P3LossCount : Number()
               from accumulate (
	 	       Claim(calculateMonths(dateOccurred, effectiveDate) <= {num}, incidentCode : incidentCode soundslike "{typeOfLoss}"), 		
count(incidentCode))

	eval(PriorLossCount + P3LossCount > {thresholdOfLosses})
