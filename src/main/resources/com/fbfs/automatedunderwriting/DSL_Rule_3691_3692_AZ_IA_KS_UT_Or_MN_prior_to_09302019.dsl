[when] R3691 R3692 Effective for states AZ, KS, IA, UT and Effective MN prior to 9/30/19 =

(
Policy($state : state == "AZ" || == "KS" || == "IA" || == "UT"))  or
(Term(effectiveDate < "30-Sep-2019") and Policy(state == "MN"))
)

