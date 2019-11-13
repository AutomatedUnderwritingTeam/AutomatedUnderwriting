[when]The UAR on the Claim has changed=		
exists (	(UnitAtRisk( $unitAtRiskNumber : unitAtRiskNumber == unitAtRiskNum , status != "D" , $transactionNumber == transactionNumber )

) or

			   (vehicle : Vehicle( unitAtRiskNumber == unitAtRiskNum) and
		Coverage( $transactionNumber == transactionNumber , Deleted != true ) from vehicle.coverageList
))
 

