[when]R4975 Condition 3x  -  OR The Umbrella's number of youthful female operators has changed or been added =
( 

	UmbrellaCoverage( numOps : vehiclePremium.numberOfFemaleYouthOperators, prevNumOps : vehiclePremium.previousNumberOfFemaleYouthOperators != null, eval( numOps != prevNumOps ))
) 
or