[when] R8388 R8392 Owned rented to others dwellings do not meet minimum deductible for wind and hail=
		// Trigger: 'Owned Rented to Others' dwelling(s) doesn't meet minimum deductible/wind hail criteria: (Change)
		//    1 to 5 owned rented to others dwelling(s)   Must be   $1,000/$2,500 wind & hail or minimum $2,500
		//    6 to 10 owned rented to others dwellings    Must be   $2,500/$5,000 wind & hail or minimum $5,000
		//    11 to 19 owned rented to others dwellings   Must be   $2,500/$10,000 wind & hail or minimum $10,000
		//    20> owned rented to others dwellings        Must be   $2,500/$20,000 wind & hail or minimum $20,000
		
		// Count numberOfDwellings
		numberOfDwellings : Number( intValue > 0 ) from accumulate ( dwelling3 : Dwelling(occupancyStatus == "OR"), count(dwelling3) )
		(
		(eval(numberOfDwellings < 6) and eval($deductable < 1000)) or
		 (eval(numberOfDwellings < 6) and eval($deductable2 != 0) and eval($deductable2 < 2500)) or
		(eval(numberOfDwellings < 6) and eval($deductable2 == 0) and eval($deductable < 2500)) or
		
		
		(eval(numberOfDwellings > 5) and eval(numberOfDwellings < 11) and eval($deductable < 2500)) or
		 (eval(numberOfDwellings > 5) and eval(numberOfDwellings < 11) and eval($deductable2 != 0)and  eval($deductable2 < 5000)) or
		(eval(numberOfDwellings > 5) and eval(numberOfDwellings < 11) and eval($deductable2 == 0) and eval($deductable < 5000)) or
		
			
		(eval(numberOfDwellings > 10) and eval(numberOfDwellings < 20) and eval($deductable < 2500)) or
		 (eval(numberOfDwellings > 10) and eval(numberOfDwellings < 20) and eval($deductable2 != 0)and  eval($deductable2 < 10000)) or
		(eval(numberOfDwellings > 10) and eval(numberOfDwellings < 20) and eval($deductable2 == 0) and eval($deductable <10000)) or
		
		
		
		
		(eval(numberOfDwellings > 19) and eval($deductable < 2500)) or
		 (eval(numberOfDwellings > 19) and eval($deductable2 != 0) and eval($deductable2 < 20000)) or
		(eval(numberOfDwellings >  19) and eval($deductable2 == 0) and eval($deductable < 20000)) 
		)
		// Any of the following are true:  
		//     Dwelling added is true  
		//     Occupancy Status has changed 
		//     Condo deductible has changed
		
		((Dwelling (added == true, occupancyStatus == "OR")) or 
		(Dwelling (previousOccupancyStatus != null, occupancyStatus == "OR")) or
		((Dwelling (coverageList2 : coverageList, occupancyStatus == "OR")) and
		  (Coverage(coverageCode == "STRUC"  || == "CONDO", previousDeductable != null || previousDeductable2 != null ) from coverageList2))
		) 
