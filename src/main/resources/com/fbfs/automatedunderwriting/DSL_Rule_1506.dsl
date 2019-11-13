[when] R1506 There is less than 100 acres and limit increased more than $150,000  or  added blanket item is more than 30% of blanket total = 
 (  
        (
		AggregateFarm( added == true || previousInventoryClass != null,  $coverageList : coverageList, $unitValue : unitValue, $quantity : quantity) and
		Coverage(coverageNumber == $coverageNumber, $limit1 : limit1)  from $coverageList and
		( (eval(($unitValue * $quantity) > ($limit1 * .30))) or  ( (eval($cntTotalAcres < 100)) and (eval(($unitValue * $quantity) > 150000)) ) ) 
		
        )
		or
	    (
		FarmMachinery( added == true || previousInventoryClass != null,  $coverageList : coverageList, $unitValue : unitValue, $quantity : quantity) and
		Coverage(coverageNumber == $coverageNumber, $limit1 : limit1)  from $coverageList and
		( (eval(($unitValue * $quantity) > ($limit1 * .30))) or  ( (eval($cntTotalAcres < 100)) and (eval(($unitValue * $quantity) > 150000)) ) ) 
		
        )
		or
	    (
		ConfinedLivestock( added == true || previousInventoryClass != null,  $coverageList : coverageList, $unitValue : unitValue, $quantity : quantity) and
		Coverage(coverageNumber == $coverageNumber, $limit1 : limit1)  from $coverageList and
		( (eval(($unitValue * $quantity) > ($limit1 * .30))) or  ( (eval($cntTotalAcres < 100)) and (eval(($unitValue * $quantity) > 150000)) ) ) 
		
        )
)
	
