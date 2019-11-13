[when]The dwellings solid fuel heat has been added or changed =
 (SolidFuelHeat( added == true ) from dwelling.solidFuelHeatList)
	or  
(SolidFuelHeat( (previousApplianceType != null && previousApplianceType != applianceType) || (previousBackClearance != null && previousBackClearance != backClearance) || ( previousCeilingClearance != null && previousCeilingClearance != ceilingClearance)
|| (previousCeilingCoverMaterial != null &&  previousCeilingCoverMaterial !=  ceilingCoverMaterial)
|| (previousChimneyCleaningFrequency != null && previousChimneyCleaningFrequency != chimneyCleaningFrequency)
|| (previousChimneyType != null && previousChimneyType != chimneyType)
|| (previousControl != null && previousControl != control)
|| (previousDateInstalled != null && previousDateInstalled != dateInstalled)
|| (previousFloorClearance != null && previousFloorClearance != floorClearance)
|| (previousFloorCoverMaterial != null &&  previousFloorCoverMaterial !=  floorCoverMaterial)
|| (previousFloorLocation != null && previousFloorLocation != floorLocation)
|| (previousHasChimneyFlue != null && previousHasChimneyFlue != hasChimneyFlue)
|| (previousIsAirVented != null && previousIsAirVented != isAirVented)
|| (previousIsFloorProtected != null && previousIsFloorProtected != isFloorProtected)
|| (previousIsWallCeilingProtected != null && previousIsWallCeilingProtected != isWallCeilingProtected)
|| (previousLeftWallClearance != null  && previousLeftWallClearance != leftWallClearance)
|| (previousPipeWallClearance != null  &&  previousPipeWallClearance != pipeWallClearance)
|| (previousRightWallClearance != null  && previousRightWallClearance != rightWallClearance)
|| (previousWallCoverMaterial != null  && previousWallCoverMaterial != wallCoverMaterial)
 





) 
from dwelling.solidFuelHeatList) 
