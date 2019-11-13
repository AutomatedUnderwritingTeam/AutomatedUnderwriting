[when] R7991 The named insured or child has been added or 50 Plus Credit added or new business =

exists( 
(ClientRelationship( $clientReference == clientReference, type == "IN", added != null  && == true) and eval(calculateAge(dateOfBirth, termEffectiveDate) < 50)) or 

		 (household : Household( ) and
		 HouseholdMember( $clientReference == clientReference, householdClientRelationshipList : clientRelationshipList ) from household.householdMemberList and
                 ClientRelationship(type == "CP", added !=null && ==true) from householdClientRelationshipList  and 
eval(calculateAge( dateOfBirth, termEffectiveDate) > 13) and  eval(calculateAge(dateOfBirth, termEffectiveDate) < 22 )) or
(eval(umbrellaCoverage.previousHas50PlusCredit != null  && umbrellaCoverage.previousHas50PlusCredit == false)))


