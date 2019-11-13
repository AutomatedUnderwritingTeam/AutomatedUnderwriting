[when] The vehicle has a symbol that has decreased = eval(vehicle.getSymbol() != null && 
vehicle.getPreviousSymbol() != null &&
(convertToDouble(vehicle.getSymbol()) < convertToDouble(vehicle.getPreviousSymbol())))
