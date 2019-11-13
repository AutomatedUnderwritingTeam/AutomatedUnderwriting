[when] R3086 Condition 2 - OR  Household has the client as member of the household = 

( 
(Household($householdMemberList : householdMemberList != null) from household) and
(HouseholdMember(clientReference == crClientReference, added != null, added == true) from $householdMemberList)
)
)
