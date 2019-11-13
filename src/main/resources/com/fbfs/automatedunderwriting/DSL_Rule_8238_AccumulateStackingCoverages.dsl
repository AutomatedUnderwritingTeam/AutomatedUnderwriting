[when]R8238 - UM Stacked coverages greater than {value}=

Number(intValue > {value} ) 
	from accumulate (  Coverage( limit1 : limit1 , coverageCode == "UMCSL" || == "UIBI" , deleted != true ,  vehicleSupplement != null, vehicleSupplement.stackable != null, vehicleSupplement.stackable == true),  sum( limit1)  )
