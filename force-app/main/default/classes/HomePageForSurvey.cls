public class HomePageForSurvey {

    public PageReference  yes(){
         string assessemtId  = ApexPages.CurrentPage().getparameters().get('aId');
        string contactId  = ApexPages.CurrentPage().getparameters().get('cId');
	PageReference surveyPage = new PageReference('/mypage/takesurvey?id='+assessemtId+'&cId='+contactId);
	surveyPage.setRedirect(true);
	surveyPage.getParameters().put('id', assessemtId);
        surveyPage.getParameters().put('cId', contactId);
	return surveyPage;
}
    
  
}