[when] R5948 - Or Driver licenses has accidents and convictions within 36 months = 

( 
exists( 
		
License(accidentConvictionList : accidentConvictionList) from licenseList and
AccidentConviction ( convictionDate : convictionDate != null)  from accidentConvictionList and
eval(calculateMonths(convictionDate, termEffectiveDate) <= 36) ) )
)
