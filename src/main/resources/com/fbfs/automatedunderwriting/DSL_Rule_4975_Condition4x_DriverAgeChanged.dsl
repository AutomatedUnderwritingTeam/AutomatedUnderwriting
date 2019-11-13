[when]R4975 Condition4x  -   OR a driver's age has changed, GT or EQ to 21 or now LT 21,  resulting in a youthful operator change status =
(
  	Driver( previousAge : previousAge != null, age : age, driverReference : driverReference ) and               
		 Client( clientReference == driverReference, supplementList : supplementList )  and
		 ClientSupplement( sex == "F" ) from supplementList and
		  (eval(previousAge >= 21  && age < 21)  or eval(age >= 21 && previousAge < 21))
		 )
		 )