[when] The driver license number does not match the returned license number from the MvrReport= 
(
TrapMvrReport( trapId == $trapId , mvrReport.returnInfo != null, eval(mvrReport.getDriversLicenseList().size() == 0)) or 

TrapMvrReport( trapId == $trapId , mvrReport.returnInfo != null  , driversLicenseList : mvrReport.driversLicenseList) and
DriversLicense ( $returnedLicenseNumber : returnedLicenseNumber) from driversLicenseList 	 and
License( licenseNumber : licenseNumber, licenseNumber not matches ("(?i).*" + $returnedLicenseNumber + "(.|\n|\r)*" )) from licenseList 	and 
DriversLicense ( returnedLicenseNumber == $returnedLicenseNumber, returnedLicenseNumber not matches ("(?i).*" + licenseNumber + "(.|\n|\r)*" )) from driversLicenseList
)
