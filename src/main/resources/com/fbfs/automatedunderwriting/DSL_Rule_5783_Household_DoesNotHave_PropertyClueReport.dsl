[when] R5783 The household does not have an Property Clue Report =		

		(
	
(Client( clientReference == hhClientReference, trapId == null  ))  or  
(Client( clientReference == hhClientReference, $trapId : trapId != null ) and
(not (TrapCluePropertyReport(trapId == $trapId))))
)
