public class oppaddextn {

    public Account acc {get;set;}
    public opportunity opp{get;set;}
    public Opp_Adress__c oppaddprop{get;set;}
    
    public oppaddextn(ApexPages.StandardController controller) {
     // opp=(opportunity)controller.getrecord();
     string oppid =ApexPages.currentPage().getParameters().get('id');
      opp=[select id,accountid,stageName,CloseDate from opportunity where id =:oppid ] ;
      acc=[select id,SLA__c,BillingAddress__c from Account where id=:opp.accountid];

    }
    
    public pagereference Updateacc(){
    update this.acc;
    Update this.opp;
   Opp_Adress__c oppadd= new Opp_Adress__c();
    
  oppadd.oppadd__c=opp.id;
   oppadd.End_user_street__c=acc.BillingAddress__c;
   insert oppadd;
   oppaddprop=[select id,End_user_street__c from Opp_Adress__c where id=:oppadd.id];
    pagereference  pageref= new PageReference('/apex/readonly');
    pageref.getparameters().put('id',opp.id);
    pageref.setredirect(true);
    return pageref;
    
    
    }

}