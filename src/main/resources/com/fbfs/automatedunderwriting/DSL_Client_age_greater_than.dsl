[when]The clients age is more than {ageVariable} and less than {ageVariable2} and is not a nonPermanant driver=		 
ClientSupplement ( dateOfBirth : dateOfBirth != null, isPermanentNondriver != true) from supplementList
		 eval(calculateAge(dateOfBirth, effectiveDate) > {ageVariable}) 
		 eval(calculateAge(dateOfBirth, effectiveDate) < {ageVariable2})

