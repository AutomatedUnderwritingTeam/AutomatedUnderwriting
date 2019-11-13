[when] R5183 The client has been added to a household and is not an alternate head of household =

// client is in the household 
$household : Household(deleted != true)
(
(hh: HouseholdMember(added == true, clientReference == clientsClientReference) from $household.headOfHousehold  and 

not(ClientRelationship(type=='ZP', deleted != true) from hh.clientRelationshipList)

) 
or
(hm: HouseholdMember(added == true, clientReference == clientsClientReference) from $household.householdMemberList  and
not(ClientRelationship(type=='ZP', deleted != true) from hm.clientRelationshipList))
)
 
//  Client did not exist previously in the household
not(
(HouseholdMember(added != true, clientReference == clientsClientReference) from $household.headOfHousehold) or
(HouseholdMember(added != true, clientReference == clientsClientReference) from $household.householdMemberList)
)

//  Client never existed on the policy
not(ClientRelationship(added != true, clientReference == clientsClientReference))
