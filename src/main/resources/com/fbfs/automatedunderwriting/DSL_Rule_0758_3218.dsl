[when]The policy contains personal liab coverage or does not contain a property LOB=		(Coverage( coverageCode == "BIPDP" , deleted != true ) or
		(not(exists(PropertyLineOfBusiness(deleted != true))) and
		 not(exists(Client(supplementList : supplementList) and
				   ClientSupplement((occupation == "F02" || == "F03" || == "R01" || == "H01" ||  matches "(?i).*FARM(.|\n|\r)*" ||  matches "(?i).*RANCH(.|\n|\r)*" ||  matches "(?i).*HOMEMAKE(.|\n|\r)*" ) || (secondaryOccupation == "F02" || == "F03" || == "R01" || == "H01" ||  matches "(?i).*FARM(.|\n|\r)*" ||  matches "(?i).*RANCH(.|\n|\r)*" ||  matches "(?i).*HOMEMAKE(.|\n|\r)*" )) from supplementList))))
