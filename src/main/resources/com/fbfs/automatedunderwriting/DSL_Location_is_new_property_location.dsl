[when]The location is a new property location =


newLocation : Location(locationNumber == $locationNumber, newCity : city, newState : state, newZip : zip, newStreet : street) 
  
newSublocation : Sublocation(newCounty : county, newTownship : township, newTier : tierOrAddition, newSection : sectionOrLot, newRange : rangeOrBlock) from newLocation.sublocationList 

cntLocOnUAR : Number() from accumulate ( unitAtRisk : UnitAtRisk(lineOfBusiness == "PRPL", locationNumber == $locationNumber, uar : unitAtRiskNumber), count(uar))
 
cntLocNoPrevLoc : Number( ) from accumulate ( UnitAtRisk(lineOfBusiness == "PRPL", locationNumber == $locationNumber, previousLocationNumber == null, added !=true, uar1 : unitAtRiskNumber), count(uar1))
 
cntLocNoInPrev : Number( ) from accumulate ( UnitAtRisk(lineOfBusiness == "PRPL",  previousLocationNumber != null, previousLocationNumber == $locationNumber, uar2 : unitAtRiskNumber ), count(uar2))
 
cntPrevLoc : Number( ) from accumulate (  UnitAtRisk(lineOfBusiness == "PRPL",  previousLocationNumber != null, previousLocationNumber == previousLocationNumber, uar3 : unitAtRiskNumber), count(uar3))
 
exists ( 
// New location if it is on the PRPL LOB for the first time
(eval(cntLocOnUAR > 0 && cntLocNoPrevLoc == 0 && cntLocNoInPrev == 0 && cntPrevLoc == 0)) or 
// New location if use is farm and added for the first time
(Location(locationNumber == $locationNumber, added == true, previousLocationNumber == null) and 
LocationSupplement(locationUse == "F" || locationUse == "N" || locationUse == "S") from newLocation.supplement) or 
// New location if use has been added for the first time
(LocationSupplement(previousLocationUse !=null, previousLocationUse != "F" && previousLocationUse != "N" && previousLocationUse != "S") from newLocation.supplement) or 
// New Location if this information has changed  
(Location(locationNumber == previousLocationNumber, city != newCity || state != newState || street != newStreet )) or
// New location if this information has changed  
(Location(locationNumber == $locationNumber, previousLocationNumber != null, previousLocationNumber1 : previousLocationNumber) and deletedLocation : Location(locationNumber == previousLocationNumber1) and Sublocation(county != newCounty || township != newTownship ||  tierOrAddition != newTier || sectionOrLot != newSection ||  rangeOrBlock != newRange) from deletedLocation.sublocationList))
