[when]R8365 -- The driving history charge field is less than the number of drivers with driving history charge =		

driverHistoryCount : Number( ) from accumulate( Driver(hasHistoryCharge : hasHistoryCharge == true ),  count( hasHistoryCharge) )  

numberOfDriversWithHistoryCharge : UmbrellaVehiclePremium(numberOfDriversWithHistoryCharge)

eval(numberOfDriversWithHistoryCharge  < driverHistoryCount)
