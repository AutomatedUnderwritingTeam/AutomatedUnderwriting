[when] R0464 The coverage limit is greater than 5000 and total acres over 100 or limit is greater than 250000=		
(((Coverage( coverageCode == "FPPS", limit1 > 49999 ) from unitAtRisk.coverageList) and (eval( $cntTotalAcres < 100 ))) or (Coverage( coverageCode == "FPPS", limit1 > 250000 ) from unitAtRisk.coverageList))
