[when]The property underwriting questions need reviewed=		exists(
		(UnderwritingQuestion( lineOfBusiness == "PRPL" , answer == true, questionNum != "1"  && != "4"  && != "11" ) from underwritingQuestionList) or
		(Number ( intValue > 0 ) from accumulate (dwelling : Dwelling ( dwellingType == "MH" ), count(dwelling)) and
		 UnderwritingQuestion( lineOfBusiness == "PRPL" , answer == false, questionNum == "11" ) from underwritingQuestionList)
		)
