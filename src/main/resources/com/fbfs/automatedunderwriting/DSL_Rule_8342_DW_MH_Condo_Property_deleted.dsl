[when]R8342 - The policy has property unit that has been deleted that is a type dwelling, mobile home, condo class 1 & 2 or mobile home with continuous foundation =		   (exists ((dwelling : Dwelling( deleted == true) and
  Coverage( coverageCode == "STRUC" ) from dwelling.coverageList )  ||
  (dwelling1 : Dwelling( dwellingType == "C1"  || == "C2", deleted == true ) and
		Coverage( coverageCode == "CONDO" ) from dwelling1.coverageList)     || 
(dwelling2:  Dwelling( deleted == true , dwellingType == "MH" ) and
		Coverage( coverageCode == "STRUC"  ) from dwelling2.coverageList)    ||
(dwelling3:  Dwelling( isFoundationContinuous == true, deleted == true) and 
Coverage( coverageCode == "STRUC"  ) from dwelling3.coverageList)))

