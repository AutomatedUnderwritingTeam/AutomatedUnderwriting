[when] R5778 Before 06/20/2012 for states AZ, IA, NE, SD must have Vehicle LOB =


(Term(effectiveDate < "20-Jun-2012") and 
Policy(state == "AZ" || == "IA" || == "NE" || == "SD") and
LineOfBusiness(deleted != true, lineOfBusiness == "VEH"))
or

