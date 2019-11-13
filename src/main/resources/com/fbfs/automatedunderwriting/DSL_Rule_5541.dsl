[when]The driver is a youthful operator or there is a second household member with marital status equal to M and the driver has had a maritial status equal to M=		(eval(driverAge < 25) or		
		(Household (householdMemberList : householdMemberList ) and
		 firstHouseholdMember : HouseholdMember ( clientReference == driverReference ) from householdMemberList and
		 secondHouseholdMember : HouseholdMember ( deleted == false, secondMemberClientReference : clientReference != driverReference ) from householdMemberList and
		 secondClient : Client ( clientReference == secondMemberClientReference, secondClientSupplementList : supplementList ) and
		 ClientSupplement( (maritalStatus == "M" || previousMaritalStatus == "M") ) from firstClientSupplementList and
		 ClientSupplement( maritalStatus == "M" ) from secondClientSupplementList))
