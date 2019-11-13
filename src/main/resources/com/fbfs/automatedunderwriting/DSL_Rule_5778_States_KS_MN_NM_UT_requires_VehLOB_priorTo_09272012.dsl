[when] R5778 Before 09/27/2012 for states KS, MN, NM, UT must have Vehicle LOB =


(Term(effectiveDate < "27-Sep-2012") and 
Policy(state == "KS" || == "MN" || == "NM" || == "UT") and
LineOfBusiness(deleted != true, lineOfBusiness == "VEH"))
or

