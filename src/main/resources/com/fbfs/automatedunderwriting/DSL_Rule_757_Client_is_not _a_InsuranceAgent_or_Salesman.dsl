[when]R0757 The client is not a salesman =

(

(ClientSupplement( occupation == null && secondaryOccupation == null ) from $client.supplementList) or


not (ClientSupplement( $occupation : occupation != null && matches "(?i).*AGEN(.|\n|\r)*"  || matches "(?i).*REAL(.|\n|\r)*"  || matches "(?i).*INS(.|\n|\r)*"  || matches "(?i).*SALE(.|\n|\r)*" || matches "(?i).*S01(.|\n|\r)*" || matches "(?i).*I01(.|\n|\r)*"  ||  $secondaryOccupation : secondaryOccupation != null &&  matches "(?i).*AGEN(.|\n|\r)*"  || matches "(?i).*REAL(.|\n|\r)*"  || matches "(?i).*INS(.|\n|\r)*"  || matches "(?i).*SALE(.|\n|\r)*" || matches "(?i).*S01(.|\n|\r)*" || matches "(?i).*I01(.|\n|\r)*"  ) from $client.supplementList)  
)
