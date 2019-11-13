[when] Driver has had license suspended within {num} months = 

(

exists(TrapDrivingRecord ( trapId == trapId, violationType matches ".*SUSP(.|\r)*", eval(calculateMonths(drivingRecord.getViolationDate(), effectiveDate) <= {num})  ))  
or

exists(TrapDrivingRecord ( trapId == trapId, violationType matches ".*SUSP(.|\r)*", reinstateDate : drivingRecord.reinstateDate != null)  and    eval(calculateMonths(reinstateDate, effectiveDate) <= {num})  )

)
 
