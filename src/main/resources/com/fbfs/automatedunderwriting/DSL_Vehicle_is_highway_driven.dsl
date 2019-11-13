[when]Vehicle is highway driven =
 (
	Vehicle( type == "VA" || == "PC" || == "VC" || == "PF" || == "PN" || == "PT" || == "ST" || == "FT" || == "VM" || == "PP", unitAtRiskNumber == unitAtRiskNumber) or 
	Motorcycle( registeredForRoadUse == true, unitAtRiskNumber == unitAtRiskNumber ) or 
	Vehicle( type == "PP" , bodyType == "SG", unitAtRiskNumber == unitAtRiskNumber) 
)

