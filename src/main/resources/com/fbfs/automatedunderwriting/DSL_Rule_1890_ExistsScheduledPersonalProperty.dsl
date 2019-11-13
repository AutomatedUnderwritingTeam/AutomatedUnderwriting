[when]There is a Schedule Personal Property unit at risk that contains the coverage = 
	exists(scheduledPersonalProperty : ScheduledPersonalProperty( unitAtRiskNumber : unitAtRiskNumber) &&
		Coverage( coverageNumber == coverageNumber ) from scheduledPersonalProperty.coverageList)
