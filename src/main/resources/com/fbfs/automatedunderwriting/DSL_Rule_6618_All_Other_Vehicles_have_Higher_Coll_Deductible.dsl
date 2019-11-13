[when]R6618 - All other vehicles have higher Coll Deductible =
(
(not (exists( 
             AnotherVehicle: Vehicle( added != true , type == type1) and 
	     Coverage( coverageCode == coverage1.coverageCode, deductable <= coverage1.deductable) from AnotherVehicle.coverageList
             )
      ) 
)
and 
 
(exists(  
             AnotherVehicle2: Vehicle( added != true , type == type1) and 
	     Coverage( coverageCode == coverage1.coverageCode, deductable > coverage1.deductable) from AnotherVehicle2.coverageList 
       )
)  
)
