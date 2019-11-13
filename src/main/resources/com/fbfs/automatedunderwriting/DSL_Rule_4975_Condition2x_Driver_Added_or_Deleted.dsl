[when]R4975 Condition 2x  -   OR Driver with age less than 21 added or deleted =
(
(Driver( age < 21 , added == true, driverReference : driverReference ) and
		 Client( clientReference == driverReference, supplementList : supplementList ) and 		      
		ClientSupplement( sex == "F" ) from supplementList
) or 

(Driver( age < 21 , deleted == true, driverReference : driverReference ) and
		 Client( clientReference == driverReference, supplementList : supplementList ) and 		      
		ClientSupplement( sex == "F" ) from supplementList
		)
)
or