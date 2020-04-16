public class OpportunityExtension{
    
   
    public String selectedAcc{get;set;}

    
    public List<SelectOption> opportunities{get{
        List<SelectOption> opportunities = new List<SelectOption>();
        for(Opportunity a : [SELECT name from Opportunity])
        {
            system.debug('name:::' + a.name);
            opportunities.add(new SelectOption(a.Name, a.Name));
        }
        return opportunities;
    }}
    
    public PageReference getOppDetails(){
        PageReference pf = Page.displayofopplistpage;
        pf.getParameters().put('selectedAcc',selectedAcc);
        pf.setRedirect(true);
      //  PageReference pageReference = new PageReference('/apex/OpportunityDetailPage?selectedAcc='+selectedAcc);
        return pf;
    }
    
    
}