[when] There are more than {thresholdOfLosses} P3 losses of type {typeOfLoss} within {num} months = 

	
	
	claimsCount : Number()
               from accumulate (
	 	       Claim(calculateMonths(dateOccurred, effectiveDate) <= {num}, incidentCode : incidentCode soundslike "{typeOfLoss}"), 		
count(incidentCode))

	eval(claimsCount > {thresholdOfLosses})



