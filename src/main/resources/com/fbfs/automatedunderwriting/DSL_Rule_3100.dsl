[when]Unless a household member's last name contains the phrase Corp=		not ($householdMember2 : HouseholdMember( $clientReference2 : clientReference ) and 
			Household( this == $household , headOfHousehold == $householdMember2 || householdMemberList contains $householdMember2 ) and
			Client ( clientReference == $clientReference2, $nameList : nameList ) and
			ClientName ( lastName matches "(?i).*CORP(.||\r)*" ) from $nameList			
			) 

