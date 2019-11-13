[when]The household does not have another household member that has a spouse relationship or marital status of married=		

not
( exists

(HouseholdMember(hmClientReference : clientReference, householdClientRelationshipList : clientRelationshipList) from householdMemberList and
ClientRelationship( type == "SP") from householdClientRelationshipList  and 
Client(clientReference == hmClientReference, hmSupplementList : supplementList) and
ClientSupplement(maritalStatus == "M") from hmSupplementList  and

(
(HouseholdMember(hm2ClientReference : clientReference != hmClientReference) from householdMemberList and 
Client(clientReference == hm2ClientReference, hm2SupplementList : supplementList) and
ClientSupplement(maritalStatus == "M") from hm2SupplementList)  or 
(eval(hhClientReference != hmClientReference) and 
Client(clientReference == hhClientReference, hhSupplementList : supplementList) and
ClientSupplement(maritalStatus == "M") from hhSupplementList)
)
)

)
