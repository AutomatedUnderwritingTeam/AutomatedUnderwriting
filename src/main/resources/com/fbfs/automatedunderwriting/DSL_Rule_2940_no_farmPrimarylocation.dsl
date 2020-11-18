[when]R2940 - Primary location is not a farm ranch location  =
( 
 	LocationSupplement( isPrimaryLocation == true, locationUse != "S" && locationUse != "F"  ) from $location.supplement
) 
)
  