[when]R6310 R6311 Policy has an Umbrella or is a non Farm policy without Primary Dwelling or Household Personal Property =

LineOfBusiness( lineOfBusiness == "UMB" , status != "D" )  or

(
(not ( $location : Location( locationNumber : locationNumber) and
		 LocationSupplement( locationUse == "S" || == "F"  ) from $location.supplement)) and
(not ($dwelling : Dwelling( occupancyStatus == "OO"  || == "TN" || == "UN", isUsedSeasonally != true, status != "D") and
      Coverage( coverageCode == "STRUC" || == "HPP", status != "D" ) from $dwelling.coverageList))
)
 