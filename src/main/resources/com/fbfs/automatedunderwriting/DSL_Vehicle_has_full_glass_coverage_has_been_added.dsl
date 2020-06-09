[when] The vehicle has a full glass coverage that has been added =
Coverage( coverageCode == "COMP", vehicleSupplement != null, vehicleSupplement.glassIndicator == "G", ((vehicleSupplement.previousGlassIndicator != null && != "G") || (added == true)) ) from $coverageList
