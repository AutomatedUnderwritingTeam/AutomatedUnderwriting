[when]R6516 -- The policy residence count does not match the liability residence count =		

residenceCount : Number( ) from accumulate( Dwelling(deleted != true, occupancyStatus != "OR", unitAtRiskNumberD : unitAtRiskNumber),  count( unitAtRiskNumberD) )  
 

 eval(residenceCount != (residencesOwner + residencesTenant))   and
  (not (eval(residenceCount == 0) and eval(residencesOwner + residencesTenant == 1)))

