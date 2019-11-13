[when]R6617 - All other vehicles have higher Comp Deductible =
(
(not (exists( 
             AnotherVehicle: Vehicle( added != true , type == typeVehicle1) and 
	     Coverage( coverageCode == coverage1.coverageCode, deductable <= coverage1.deductable) from AnotherVehicle.coverageList
             )
      ) 
)
and 
 
(exists(  
             AnotherVehicle2: Vehicle( added != true , type == typeVehicle1) and 
	     Coverage( coverageCode == coverage1.coverageCode, deductable > coverage1.deductable) from AnotherVehicle2.coverageList 
       )
)  
)
