[when]R8342 - A dwelling, mobile home, condo class 1 & 2 or mobile home with continuous foundation has been deleted =		  
 (exists ((dwelling10 : Dwelling( deleted == true) and
  Coverage( coverageCode == "STRUC" ) from dwelling10.coverageList )  ||
  (dwelling11 : Dwelling( dwellingType == "C1"  || == "C2", deleted == true ) and
		Coverage( coverageCode == "CONDO" ) from dwelling11.coverageList)     || 
(dwelling12:  Dwelling( deleted == true , dwellingType == "MH" ) and
		Coverage( coverageCode == "STRUC"  ) from dwelling12.coverageList)    ||
(dwelling13:  Dwelling( isFoundationContinuous == true, deleted == true) and 
Coverage( coverageCode == "STRUC"  ) from dwelling13.coverageList)))

