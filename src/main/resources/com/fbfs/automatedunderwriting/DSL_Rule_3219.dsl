[when]There is not a named insured that is a farmer or an existing vehicle with farm/ranch use=not(exists(Vehicle( vehicleUse == 'F', added != true ) or
		     (Policy( clientRelationshipList : clientRelationshipList ) and
		      ClientRelationship( type == "IN", clientReference : clientReference) from clientRelationshipList and 
   		      Client( clientReference == clientReference, supplementList : supplementList)  and
		      ClientSupplement( occupation == "F02" || == "F03" || == "R01" ) from supplementList)))
