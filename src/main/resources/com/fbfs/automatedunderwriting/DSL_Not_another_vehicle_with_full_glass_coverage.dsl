[when]There is not another vehicle with previous full glass coverage=		

not(Vehicle( coverageList2 : coverageList, $unitAtRiskNumber != unitAtRiskNumber, added != true ) and
	   Coverage( added != true, coverageCode == "COMP", vehicleSupplement != null, vehicleSupplement.glassIndicator == "G", (vehicleSupplement.previousGlassIndicator != null && != "G") ) from coverageList2)
