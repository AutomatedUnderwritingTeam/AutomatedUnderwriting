[when]R5949: The driver has a conviction or another prior loss within 36 months  =		exists((PriorLoss( this != priorLoss , priorLossSupplement2 : supplement != null  , dateOfLoss2 : dateOfLoss != null  , eval( calculateMonths(dateOfLoss2, termEffectiveDate) <= 36 )) and
		PriorLossSupplement( unitAtRiskNumber == drvUnitAtRiskNumber ) from priorLossSupplement2) or
		(CntDriver( unitAtRiskNumber == drvUnitAtRiskNumber , cntCogenGroup1ConvictionsWithin36 > 0 )) or
		(PriorLoss( priorLossSupplement2 : supplement != null  , dateOfLoss2 : dateOfLoss != null  , eval( calculateMonths(dateOfLoss2, termEffectiveDate) <= 36 )) and
		PriorLossSupplement( unitAtRiskNumber == vehUnitAtRiskNumber ) from priorLossSupplement2) or
		(License ( accidents : accidentConvictionList ) from licenseList and 		 
		Number (intValue > 0 ) from accumulate (accidentConviction : AccidentConviction ( convictionDate : convictionDate != null, eval(calculateMonths(convictionDate, termEffectiveDate) <= 36) ) from accidents, count(accidentConviction))))
