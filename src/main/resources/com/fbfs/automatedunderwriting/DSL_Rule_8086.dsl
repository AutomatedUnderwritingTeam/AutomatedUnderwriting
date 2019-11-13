[when]Another vehicle with the same collision deductible does not exist=not (
			 Coverage( coverageCode == "COLL" , this != collCoverage1 , deductable == deductable1 , coverageNumber2 : coverageNumber) and 
		     Vehicle( unitAtRiskNumber != $unitAtRiskNumber , vehicle2CoverageList : coverageList) and
		     Coverage( coverageNumber == coverageNumber2 ) from vehicle2CoverageList
		     )
