[when]Mvr Report was returned for the wrong driver =		
	TrapClient ( trapId == $trapId, lastName : client.lastName ) 
	TrapMvrReport ( trapId == $trapId)
	Number( doubleValue < 2 ) from accumulate( TrapMvrReport ( trapId == $trapId, $firstNameWeight : firstNameWeight, $lastNameWeight : lastNameWeight, $licenseWeight : licenseWeight ), sum( $firstNameWeight + $lastNameWeight + $licenseWeight ) )
