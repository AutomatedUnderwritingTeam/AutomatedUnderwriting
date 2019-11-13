[when]R3218 - OR Policy does not have property LOB and does not have farming or homemaker insureds =
(
(not (exists(LineOfBusiness(lineOfBusiness  == "PRPL", deleted != true)))) and 
 not(exists(
Client(supplementList : supplementList) and 				   
ClientSupplement((occupation == "F02" || == "F03" || == "R01" || == "H01" ||  matches "(?i).*FARM(.|\n|\r)*" ||  matches "(?i).*RANCH(.|\n|\r)*" ||  matches "(?i).*HOMEMAKE(.|\n|\r)*" ) || (secondaryOccupation == "F02" || == "F03" || == "R01" || == "H01" ||  matches "(?i).*FARM(.|\n|\r)*" ||  matches "(?i).*RANCH(.|\n|\r)*" ||  matches "(?i).*HOMEMAKE(.|\n|\r)*" )) from supplementList)
)
)
)
