[when]R7592, 7593 - Household Member is not an aternate head of household =		

not(
ClientRelationship(type=='ZP', deleted != true) from householdMember.clientRelationshipList)
