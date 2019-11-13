[when]R7564 - OR CIF not currentCarrier Inception and CIF > 60 months from term effective date - condition 2 =
((CurrentCarrier(inceptionDate : inceptionDate != null)) and
eval(calculateMonths(inceptionDate, termEffectiveDate) < 61) and
 eval(continuedInForceDate != inceptionDate)


)

)
