[when]The property underwriting questions - Is dwelling vacant andOr HPP located off premise in a storage facility -  need reviewed=		
exists
(
( Dwelling(occupancyStatus == "OO" )  and
 UnderwritingQuestion( lineOfBusiness == "PRPL" , answer == true, questionNum == "42") from $underwritingQuestionList) 
or
(Coverage( coverageCode == "HPP" ) and 
UnderwritingQuestion( lineOfBusiness == "PRPL" , questionNum == "13",  answer == true) from $underwritingQuestionList) 
)
