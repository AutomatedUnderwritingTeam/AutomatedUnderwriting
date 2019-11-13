[when]R3691 - There is no UM or UDM on another vehicle =

not (
exists(
	vehicle2 : Vehicle( unitAtRiskNumber != $unitAtRiskNumber , deleted != true ) and
	Coverage( coverageCode == "UDCSL"  || == "UMCSL"  || == "UDRBI"  || == "UIBI", deleted !=true  ) from vehicle2.coverageList
	)
)
 
