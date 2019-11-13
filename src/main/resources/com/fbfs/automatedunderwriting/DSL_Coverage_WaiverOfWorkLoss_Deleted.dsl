[condition]A coverage has a waiver of work loss that has been deleted = 
 
		coverage : Coverage(vehicleSupplement : vehicleSupplement != null) from coverageList 
		
                   VehicleCoverageSupplement(hasWaiverOfWorkLoss == false, (previousHasWaiverOfWorkLoss != null
                      && previousHasWaiverOfWorkLoss == true) ) from vehicleSupplement   
