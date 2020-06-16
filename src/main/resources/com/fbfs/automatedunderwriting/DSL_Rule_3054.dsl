[when] R3054 There is not an added Farm Truck Tractor and not more than 500 total acres or operation radius is more than 100=		
((not (Vehicle( status == "A" , type == "ST"))) or (eval( $cntTotalAcres < 500 )) or (eval(vehicle.getRadiusOperation() > 100)))
