public class OpportunityExtensionController {
    private final Account acc{get;set;}
    private final Opportunity opp;
  
    
    public OpportunityExtensionController(ApexPages.StandardController stdController){
    		opp = (Opportunity) stdController.getRecord();
        
        	acc = [select id from  Account where id = : opp.AccountId];
    }
   
}