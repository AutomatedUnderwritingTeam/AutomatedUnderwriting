[when]R8241 - No household member over the age of 20 =
		 not 
		 (
		 HouseholdMember ( $hmClientReference : clientReference ) from $householdMemberList and		 
		 Client ( clientReference == $hmClientReference, $hmClientSupplementList : supplementList ) and
		 ClientSupplement( $hmDateOfBirth : dateOfBirth != null, dateOfBirth != "01-Jan-0001" ) from $hmClientSupplementList and
		 eval(calculateAge($hmDateOfBirth, $effectiveDate) > 20)
	     )
		