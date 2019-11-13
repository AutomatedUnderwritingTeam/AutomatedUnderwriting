[when]There is not another vehicle with previous full glass coverage=		

not(exists(Vehicle( coverageList2 : coverageList, unitAtRiskNumber != unitAtRiskNumber, added != true ) and
	   Coverage( added != true, coverageCode == "COMP", vehicleSupplement != null, vehicleSupplement.glassIndicator == "G" ) from coverageList2))
