[when] R3415 If the farm wage amount is employees and only in Iowa if the farm wage amount has an annual payroll greater than 2500.   =	
	exists(( Policy(state != "IA") and 
	FarmWageAmount( wageType == "OT" ) from coverage.farmWageAmountList) or
	(Policy (state == "IA") and FarmWageAmount( wageType == "OT", wageAmount > 2500) from coverage.farmWageAmountList))

	
		
	
