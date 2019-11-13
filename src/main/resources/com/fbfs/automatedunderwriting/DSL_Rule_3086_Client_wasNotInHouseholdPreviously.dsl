[when] R3086 Condition 3 - AND  Client was not in the household previously = 


not (
//head of household
(HouseholdMember($hhClientRelationshipList : clientRelationshipList) from household.headOfHousehold and 
ClientRelationship(added != true, clientReference == crClientReference) from $hhClientRelationshipList) or
//HouseholdMember 
(HouseholdMember($hmClientRelationshipList : clientRelationshipList) from household.householdMemberList and 
ClientRelationship(added != true, clientReference == crClientReference) from $hmClientRelationshipList)
)

