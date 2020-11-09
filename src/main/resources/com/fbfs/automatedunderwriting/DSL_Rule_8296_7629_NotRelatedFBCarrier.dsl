[when]R8296 R7629 - Prior carrier is not a Farm Bureau related carrier =
 

not (PriorCarrier(carrier !=null, carrier matches "(?i).*FARM BUREAU(.||\r)*" || carrier matches "(?i).*KFB(.||\r)*" || carrier matches "(?i).*WESTERN AG(.||\r)*" || carrier matches "(?i).*WAIC(.||\r)*") from $policy.priorCarrierList)


