[when]R8239 - if stacking indicator changed or AOI increased or um/udm added or vehicle added =

(	Coverage( coverageNumber == coverageNumber, vehicleSupplement != null, vehicleSupplement.previousStackable != null) or
	Coverage( coverageNumber == coverageNumber, coverageCode == "UDCSL" || == "UMCSL" || == "UIBI" || == "UDRBI", limit1 != previousLimit1) or
	Coverage( coverageNumber == coverageNumber, coverageCode == "UDCSL" || == "UMCSL" || == "UIBI" || == "UDRBI", added == true ) from vehicle.coverageList or
	Vehicle (unitAtRiskNumber == unitAtRiskNumber, added == true)
)


