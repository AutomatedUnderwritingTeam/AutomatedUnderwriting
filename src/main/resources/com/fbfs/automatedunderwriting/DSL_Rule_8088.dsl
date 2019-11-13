[when]Another vehicle with the same comprehensive deductible does not exist=not (
			 Coverage( coverageCode == "COMP" , this != compCoverage1 , deductable == deductable1 , coverageNumber2 : coverageNumber) and 
		     Vehicle( unitAtRiskNumber != $unitAtRiskNumber , vehicle2CoverageList : coverageList) and
		     Coverage( coverageNumber == coverageNumber2 ) from vehicle2CoverageList
		     )
