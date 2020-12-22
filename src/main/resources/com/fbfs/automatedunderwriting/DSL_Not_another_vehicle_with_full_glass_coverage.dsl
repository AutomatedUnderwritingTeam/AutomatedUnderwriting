[when]There is not another vehicle with previous full glass coverage=		

not(Vehicle( coverageList2 : coverageList, $unitAtRiskNumber != unitAtRiskNumber, added != true ) and
(Coverage( added != true, coverageCode == "COMP", $vehicleSupplement2 : vehicleSupplement != null, vehicleSupplement.glassIndicator == "G") from coverageList2 and
(
 (eval($vehicleSupplement2.previousGlassIndicator == null))
)
)
) 

