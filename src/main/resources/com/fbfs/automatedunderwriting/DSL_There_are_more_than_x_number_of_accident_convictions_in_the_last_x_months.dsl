[when]There are more than {num} accidents and convictions for the driver in the prior {numMonths} months=
License ( accidents : accidentConvictionList ) from licenseList
		 Number (intValue > 0 ) from accumulate (accidentConviction : AccidentConviction ( convictionDate : convictionDate != null, eval(calculateMonths(convictionDate, termEffectiveDate) <= 36) ) from accidents, count(accidentConviction))
