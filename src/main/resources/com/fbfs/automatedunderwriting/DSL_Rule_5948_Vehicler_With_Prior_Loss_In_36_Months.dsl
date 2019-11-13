[when] R5948 - Or Vehicle with prior loss within 36 months = 

(
		exists(PriorLoss( supplement != null  , supplement.unitAtRiskNumber == vehUnitAtRiskNumber , dateOfLoss2 : dateOfLoss != null  , eval( calculateMonths(dateOfLoss2, termEffectiveDate) <= 36 )))
) 
or
