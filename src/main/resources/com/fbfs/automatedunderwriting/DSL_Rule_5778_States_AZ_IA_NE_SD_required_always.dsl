[when] R5778 Effective 06/20/2012 for states AZ, IA, NE, SD must always have a Auto Clue on every policy =

(
(Term($termEffectiveDate : effectiveDate > "19-Jun-2012") and 
Policy($state : state == "AZ" || == "IA" || == "NE" || == "SD"))
or
