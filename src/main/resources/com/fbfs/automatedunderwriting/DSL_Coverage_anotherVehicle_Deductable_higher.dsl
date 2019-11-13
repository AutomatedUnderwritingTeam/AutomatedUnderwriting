[when]Another vehicle has the coverage and the deductible is higher =

		exists(
                   AnotherVehicle: Vehicle( added != true , type == typeVehicle1) &&
		     Coverage( coverageCode == coverage1.coverageCode, deductable > coverage1.deductable ) 
                             from AnotherVehicle.coverageList
)
	        
		 
