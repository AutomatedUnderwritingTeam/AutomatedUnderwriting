[when] R3035 Effective till 09/29/2018 for states KS, MN, NM, UT and Effective for all terms for states AZ, IA, NE, SD =

(
(Term(effectiveDate < "30-Sep-2018") and 
Policy($state : state == "KS" || == "MN" || == "NM" || == "UT"))  or
(Term(effectiveDate < "23-Jun-2019") and
Policy(state == "AZ" || == "IA" || == "NE" || == "SD" ))
)

