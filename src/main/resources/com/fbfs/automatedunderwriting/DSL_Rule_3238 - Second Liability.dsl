[when] R3238 There is not a second liability that has either Personal Liability Coverage or Farm/Ranch Liability Coverage = 
 	((not (Liability( deleted != true , unitAtRiskNumber != $unitAtRiskNumber , $coverageList : coverageList ) and	         
	 Coverage( coverageCode == "BIPDF" || == "BIPDP" ) from $coverageList )) and UmbrellaCoverage( deleted != true ))
