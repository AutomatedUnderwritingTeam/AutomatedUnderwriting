[when] R5782 None of the household members have been on the policy prior =	
 
 
// check household members to see if they were in another household previously
 not   (  
     HouseholdMember( $addedHouseholdClientReference : clientReference ) from $addedHouseholdMemberList  and
     Client( $addedSupplementList : supplementList, clientReference == $addedHouseholdClientReference )  and
     ClientSupplement($addedMemberDateOfBirth : dateOfBirth ) from $addedSupplementList  and
     Client( $anotherSupplementList : supplementList, $anotherClientReference : clientReference != $addedHouseholdClientReference )  and
     ClientSupplement($addedMemberDateOfBirth == dateOfBirth ) from $anotherSupplementList  and 
     Household( added != true, householdNumber != $householdNumber, $existinghouseholdMemberList : householdMemberList, $existingHeadOfHousehold : headOfHousehold) and  
        (
	    (HouseholdMember( clientReference == $anotherClientReference ) from $existinghouseholdMemberList) or
	    (HouseholdMember ( clientReference == $anotherClientReference) from $existingHeadOfHousehold )
        )	
)  

and 
// check head of household to see if they wre in another household previously
not (
  Client( $anotherSupplementList1 : supplementList, $anotherClientReference1 : clientReference != hhClientReference )  and
  ClientSupplement($dateOfBirth == dateOfBirth ) from $anotherSupplementList1  and 
  Household( added != true, householdNumber != $householdNumber, $existinghouseholdMemberList1 : householdMemberList, $existingHeadOfHousehold1 : headOfHousehold) and  
    (
	(HouseholdMember( clientReference == $anotherClientReference1 ) from $existinghouseholdMemberList1) or
	(HouseholdMember ( clientReference == $anotherClientReference1) from $existingHeadOfHousehold1)
    )	
	
)