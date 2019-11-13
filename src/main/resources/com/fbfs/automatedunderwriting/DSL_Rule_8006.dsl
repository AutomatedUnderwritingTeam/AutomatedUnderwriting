[when] R8006 No Property LOB or No Vehicle LOB or Not All FB Underlying Coverage =

(
  (not (LineOfBusiness(lineOfBusiness == "PRPL")))  or
  (not (LineOfBusiness(lineOfBusiness  == "VEH")))  or
  (eval(isAllFarmBureauCoverage == false))  or
  (LineOfBusiness(lineOfBusiness == "PRPL", deleted == true)) or
  (LineOfBusiness(lineOfBusiness == "VEH", deleted == true))

 
)
