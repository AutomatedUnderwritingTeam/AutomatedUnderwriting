[when] R5782 The household has a driver =		

		 Driver(deleted != true, $driverReference : driverReference != null)
		(
		(eval(hhClientReference == $driverReference && household.headOfHousehold.added  == true))  or  
		(eval(household.householdMemberList != null  && (household.added == true || household.headOfHousehold.added)) and exists (HouseholdMember(clientReference == $driverReference) from household.householdMemberList))
		)
