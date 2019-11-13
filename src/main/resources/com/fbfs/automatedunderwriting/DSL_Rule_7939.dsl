[when]Merit point annual milage is not 0 and vehicle added or previous annual mileage was 0=		MeritPoint( annualMileagePoints != 0, previousAnnualMileagePoints : previousAnnualMileagePoints ) from meritPointList
		eval(vehAdded == true || previousAnnualMileagePoints == 0)
