[when]The F&R Equipment Breakdown Coverage has been addd   or  the farm operation type has changed =		
eval(coverageAdded == true || (propertyLobSupplement.getPreviousFarmOperationType() != null && propertyLobSupplement.getPreviousFarmOperationType() != propertyLobSupplement.getFarmOperationType()))
