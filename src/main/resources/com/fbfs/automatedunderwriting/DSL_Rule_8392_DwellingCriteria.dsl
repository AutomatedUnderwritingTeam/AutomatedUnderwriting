[when] R8392Dwelling Added or occupancy changed or deductable changed=
(exists(
 (Dwelling( added == true || previousOccupancyStatus != null ) from dwelling) or
  (Coverage( previousDeductable != null || previousDeductable2 != null ) from coverage)
 
 )
 )