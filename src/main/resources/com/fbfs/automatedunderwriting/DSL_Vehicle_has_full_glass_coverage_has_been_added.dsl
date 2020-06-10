[when] The vehicle has a full glass coverage that has been added =
Coverage( coverageCode == "COMP", $vehicleSupplement1 : vehicleSupplement != null, vehicleSupplement.glassIndicator == "G" ) from $coverageList  and
(
 (eval($vehicleSupplement1.previousGlassIndicator != "G")) or 
  (eval($vehicleSupplement1.previousGlassIndicator == null)) or 
  (Coverage(added == true) from $coverageList)

)
