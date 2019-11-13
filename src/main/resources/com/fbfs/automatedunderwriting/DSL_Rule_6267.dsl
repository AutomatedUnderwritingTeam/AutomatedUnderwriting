[when]Another household member has a Named Insured and Spouse relationship and the household does not have a married couple=		HouseholdMember( hmClientReference : clientReference, hmClientRelationshipList :clientRelationshipList) from householdMemberList
		ClientRelationship( type == "SP" ) from hmClientRelationshipList
		ClientRelationship( clientReference == hmClientReference , type == "IN" ) from clientRelationshipList
		Client( clientReference == hmClientReference , memberSupplementList : supplementList)
		(ClientSupplement( maritalStatus != "M" ) from supplementList or
		 ClientSupplement( maritalStatus != "M" ) from memberSupplementList)
