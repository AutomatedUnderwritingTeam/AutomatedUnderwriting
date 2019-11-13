[when] R8055 Condition 2 -  OR  Umbrella Coverage has a related policies that has been add or changed  = 
	
(	
   
(UmbrellaCoverage(relatedPolicies != null, previousRelatedPolicies != null , relatedPolicies != previousRelatedPolicies))  
or
(UmbrellaCoverage(relatedPolicies != null && != "", previousRelatedPolicies == ""))
 ) 

   
 
or
            
