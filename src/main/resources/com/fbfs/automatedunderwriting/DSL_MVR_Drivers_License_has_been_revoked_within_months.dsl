[when] Driver has had license revoked within {num} months = 


(
exists(TrapDrivingRecord ( trapId == trapId, violationType matches ".*REVO(.|\r)*", eval(calculateMonths(drivingRecord.getViolationDate(), effectiveDate) <= {num})))
or 
exists(TrapDrivingRecord ( trapId == trapId, reinstateDate : drivingRecord.reinstateDate != null, violationType matches ".*REVO(.|\r)*") and  eval(calculateMonths(reinstateDate, effectiveDate) <= {num}) )
)
