[when] R8055 Condition 3 -  OR  Umbrella Coverage has a related policies that has been deleted and counts seem incorrect  = 
	
(	
   
(UmbrellaCoverage(relatedPolicies == null || == "" , previousRelatedPolicies != null && != "")) 

and

CntPolicy(cntTotalPrevUmbrellaCounts != cntTotalUmbrellaCounts)
   
))
     
