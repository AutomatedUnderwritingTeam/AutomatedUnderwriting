[when] R7991 The client is a named insured with an age less than 50  or has a child relationship with an age 14-21 =		
 		 		Term(termEffectiveDate : effectiveDate)  
		 		ClientSupplement(dateOfBirth : dateOfBirth) from client.supplementList
		 		policy : Policy() 
		 		exists(  (ClientRelationship( $clientReference == clientReference, type == "IN") from policy.clientRelationshipList 
		   and eval(calculateAge(dateOfBirth, termEffectiveDate) < 50)) or
		   (household : Household() and 		 
		   HouseholdMember( $clientReference == clientReference, householdClientRelationshipList : clientRelationshipList ) from household.householdMemberList and                  childClientRelationship : ClientRelationship(type == "CP") from householdClientRelationshipList  and  
		   eval(calculateAge(dateOfBirth, termEffectiveDate) > 13) and eval(calculateAge(dateOfBirth, termEffectiveDate) < 22) ))
