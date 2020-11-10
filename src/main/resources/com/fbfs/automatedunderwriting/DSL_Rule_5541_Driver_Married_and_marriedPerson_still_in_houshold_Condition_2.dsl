[when]R5541 - OR The deleted driver is or was married and the household contains another person who is or was married  =


		(	 (ClientSupplement( maritalStatus == "M" || previousMaritalStatus != null && == "M") from firstClientSupplementList) and 
		(Household (householdMemberList : householdMemberList, hhClientReference : headOfHousehold.clientReference ) and 
		( eval(hhClientReference == driverReference)   or   
		HouseholdMember ( deleted != true, clientReference == driverReference ) from householdMemberList )  and  
		( Client (  clientReference == hhClientReference && != driverReference, hhClientSupplementList : supplementList ) and 
		ClientSupplement( maritalStatus == "M" || previousMaritalStatus != null && == "M") from hhClientSupplementList ) or  
		(  HouseholdMember ( deleted != true, hmClientReference : clientReference != driverReference) and   Client (  clientReference == hmClientReference, mbClientSupplementList : supplementList ) and ClientSupplement( maritalStatus == "M" || previousMaritalStatus != null && == "M") from mbClientSupplementList ) )) )
