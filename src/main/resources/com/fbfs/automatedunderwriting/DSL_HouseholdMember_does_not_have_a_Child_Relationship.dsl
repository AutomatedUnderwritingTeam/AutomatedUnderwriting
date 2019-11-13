[condition]The household member does not have a child relationship = 

not(
Household(clientRelationshipList:clientRelationshipList)  &&		
ClientRelationship(clientReference==clientReference, type=="PC", expirationDate==[12319999]) from clientRelationshipList)

