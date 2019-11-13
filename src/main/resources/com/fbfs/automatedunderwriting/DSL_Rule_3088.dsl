[when]The clients age is {ageVariable} and is not a nonPermanant driver or corporation =		 

not (ClientName( lastName matches "(?i).*CORP(.||\r)*" ) from $client.nameList) 
ClientSupplement ( dateOfBirth : dateOfBirth != null, isPermanentNondriver != true, clientClass != "CO" ) from $client.supplementList 		 
	eval(calculateAge(dateOfBirth, effectiveDate) == {ageVariable})

