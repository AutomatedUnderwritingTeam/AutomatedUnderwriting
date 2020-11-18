[when]R2940 - No previous personal liability on the policy or=
(
(  not(Coverage(coverageCode == "BIPDP")) and	  
  LocationSupplement( isPrimaryLocation == true, locationUse != "S" && locationUse != "F"  ) from $location.supplement
)
or  
