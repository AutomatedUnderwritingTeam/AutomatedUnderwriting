[when] R5948 - Driver with second loss within 36 months = 

(
(	exists(	PriorLoss( this != priorLoss , priorLossSupplement2 : supplement != null  , supplement.unitAtRiskNumber == drvUnitAtRiskNumber, dateOfLoss2 : dateOfLoss != null  , eval( calculateMonths(dateOfLoss2, termEffectiveDate) <= 36 )))
)
or


	
