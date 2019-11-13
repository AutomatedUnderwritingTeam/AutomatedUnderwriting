[when]R4974 Condition 3x  -  OR The Umbrella's number of youthful male operators has changed or been added =
( 

	UmbrellaCoverage( numOps : vehiclePremium.numberOfMaleYouthOperators, prevNumOps : vehiclePremium.previousNumberOfMaleYouthOperators != null, eval( numOps != prevNumOps ))
) 
or