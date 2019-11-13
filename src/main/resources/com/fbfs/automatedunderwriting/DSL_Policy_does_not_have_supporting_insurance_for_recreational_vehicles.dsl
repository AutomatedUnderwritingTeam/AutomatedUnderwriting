[when] The policy does not have supporting insurance for recreational vehicles = 

 not((Vehicle(deleted != true, type=="PC" || == "PF" || =="PN"  || =="PP" || == "PT")) ||  
 (Coverage(deleted !=true, coverageCode=="STRUC" || == "BIPDF"))  ||
 (Dwelling(deleted !=true, occupancyStatus=="TN", tenantCoverageList:coverageList)  &&
	(Coverage(deleted !=true, coverageCode=="HPP")  from tenantCoverageList)))
	




 
