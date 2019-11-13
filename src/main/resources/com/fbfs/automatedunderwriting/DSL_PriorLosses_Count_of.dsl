[when] There are more than {thresholdOfLosses} Prior losses of type {typeOfLoss} within {num} months = 

	
	
	PriorLossCount : Number()
               from accumulate (
	 	       PriorLoss(calculateMonths(dateOfLoss, effectiveDate) <= {num}, status: status, lossDescription1 soundslike "{typeOfLoss}"  || lossDescription2 soundslike "{typeOfLoss}" ), 		
count(status))



	eval(PriorLossCount > {thresholdOfLosses})
