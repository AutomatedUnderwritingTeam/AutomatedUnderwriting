[when]R4975 - If age changed to less than or greater than 21, driver added or deleted, or num female youth operators has changed or umb cov added=

 ( 
	UmbrellaCoverage( added == true ) or 
	UmbrellaCoverage( numOps : vehiclePremium.numberOfFemaleYouthOperators, prevNumOps : vehiclePremium.previousNumberOfFemaleYouthOperators, eval( numOps != prevNumOps )) or 
	Driver( age : age < 21 , prevAge : previousAge >= 21 ) or 
	Driver( age >= 21 , previousAge < 21 ) or 
	(
		Driver( age < 21 , added == true, driverReference : driverReference ) and
		 Client( clientReference == driverReference, supplementList : supplementList ) and 		      
		ClientSupplement( sex == "F" ) from supplementList
	) or 
	(
		Driver( age < 21 , deleted == true, driverReference : driverReference ) and
		 Client( clientReference == driverReference, supplementList : supplementList ) and 		      
		ClientSupplement( sex == "F" ) from supplementList
	)
)
