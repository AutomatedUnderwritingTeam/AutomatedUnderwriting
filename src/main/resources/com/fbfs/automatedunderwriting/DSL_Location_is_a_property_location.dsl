[when]The location is a property location =	
exists(	
UnitAtRisk(deleted != true, lineOfBusiness == "PRPL", locationNumber == $locationNumber) or
(LocationSupplement(locationUse == "F" || locationUse == "N" || locationUse == "S") from location.supplement))
