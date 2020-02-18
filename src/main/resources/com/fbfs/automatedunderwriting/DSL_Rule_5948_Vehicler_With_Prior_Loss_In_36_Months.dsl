[when] R5948 - Or Vehicle with non Group 3 prior loss within 36 months = 

(
		exists(PriorLoss( supplement != null  , supplement.unitAtRiskNumber == vehUnitAtRiskNumber , supplement.groupType != "3", dateOfLoss2 : dateOfLoss != null  , eval( calculateMonths(dateOfLoss2, termEffectiveDate) <= 36 )))
) 
or
