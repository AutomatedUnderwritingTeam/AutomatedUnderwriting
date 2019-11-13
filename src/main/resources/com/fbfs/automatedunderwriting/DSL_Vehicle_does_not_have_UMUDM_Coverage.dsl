[when]Vehicle does not have UM UDM coverage =

 (
	not (        
		Coverage( coverageCode == "UDCSL"  || == "UMCSL"  || == "UDRBI"  || == "UIBI" ) from vehicle.coverageList
	) 

)
