[when]R2956 If acres changed or location added or deleted or umbrella added or umbrella count changed =

 ( 
		LocationSupplement( supplementTotalAcres : totalAcres, previousTotalAcres : previousTotalAcres != null, eval( supplementTotalAcres != previousTotalAcres ))
	or
		(Location( added == true || deleted == true, locationNumber : locationNumber) &&
		LocationSupplement (locationNumber == locationNumber && totalAcres != null || totalAcres != 0 ))
	or 
		UmbrellaCoverage (added == true)
	or 
		UmbrellaCoverage(propertyPremium.previousTotalFarmAcres != null, propertyPremium.totalFarmAcres != propertyPremium.previousTotalFarmAcres)

)
