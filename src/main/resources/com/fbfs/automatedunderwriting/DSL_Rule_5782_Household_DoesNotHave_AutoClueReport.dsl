[when] R5782 The household does not have an Auto Clue Report =		

		(
	
(Client( clientReference == hhClientReference, trapId == null  ))  or  
(Client( clientReference == hhClientReference, $trapId : trapId != null ) and
(not (TrapClueAutoReport(trapId == $trapId))))
)
