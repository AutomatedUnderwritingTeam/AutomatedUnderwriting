[when]The CbrReport returned client SSN is not equal to head of household SSN=		ReturnedClient ( returnedSsn : returnedSsn not matches "(?i).* (.||\r)*" && not matches "(?i).*000000000(.||\r)*") from cbrReport.returnedClientList 		
		ClientSupplement ( taxId : taxId != null ) from supplementList
		eval(!replaceString(taxId, "", "-").equals(returnedSsn))

