[when]R5165  The property underwriting questions need reviewed because it was changed or added new =
// Comment this dsl works in the engine but does not work in KIE Workbench for some reason
// Thus, I have just coded rule 5165 as a straight dsl type rule until KIE workbench upgrades to a newer version
// ugly solution I know but this dsl just will not work and the guided rule editor does not work either
// for some reason.  I am saving this file for a "hopeful" future date that we can use it .. Nancy Henggeler 1/26/2018
	
		exists( 		
				(UnderwritingQuestion( lineOfBusiness == "PRPL" , answer == true, questionNum != "1", questionNum != "4", questionNum != "11", added == true || previousAnswer == false || (previousAnswerDetail != null && answerDetail != previousAnswerDetail)) from $underwritingQuestionList)
	         or 
(
			(UnderwritingQuestion( lineOfBusiness == "PRPL" , answer == false, questionNum == "11", added == true || previousAnswer == true || (previousAnswerDetail != null && answerDetail != previousAnswerDetail)) from $underwritingQuestionList)
               and
			   (Dwelling ( dwellingType == "MH", deleted != true ) )
)
)
