public class LeadPrac {
public void convertContacttoLead()
{
    	Contact c = new Contact();
    
    Account a  = new Account();
   
    c.LastName='jayCOn';
    insert c;
    Lead l = new Lead(LastName = 'Fry', Company='Fry And Sons');
    insert l;
   // id accid = l.ConvertedAccountId();
  //  id conid=l.ConvertedContactId();
  //  id oppid=l.ConvertedOpportunityId();
    
    Opportunity o = new Opportunity();
   
   // account a =[select id ,Name from account where Account.id = :accid];
    //Database.LeadConvert CL = new LeadConvert();
   // cl.setLeadId(lead);
    //cl.
   // cl.getAccountId();
    
}
}