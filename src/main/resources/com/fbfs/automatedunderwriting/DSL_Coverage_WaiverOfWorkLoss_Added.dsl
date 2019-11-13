
[condition]A coverage has a waiver of work loss that has been added = 
 
		coverage : Coverage(covAdded : added, vehicleSupplement : vehicleSupplement != null) from coverageList 
		VehicleCoverageSupplement(hasWaiverOfWorkLoss == true, (previousHasWaiverOfWorkLoss != null && previousHasWaiverOfWorkLoss != true) || covAdded == true ) from vehicleSupplement 
		
		
		
