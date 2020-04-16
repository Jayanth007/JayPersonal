public class OpportunityAddressController {

     public static Account account;
    public static String oppName;
     public String  newcity{get;set;}
      public static String newcountry{get;set;}
       public static String newpostal{get;set;}
       public static String newstate{get;set;}
    public static Opportunity opp;
    public static List<Opportunity>  accountIds = new List<Opportunity>();
    
    
    
    static{
        oppName =  ApexPages.currentPage().getParameters().get('selectedAcc');
        System.debug('oppName:::' + oppName);
        
        opportunity opp1  = [select id,accountid from Opportunity where name =: oppName];
        
       // System.debug('AccountId:::' + accountIds.get(0));
        System.debug('AccountId:::' + opp1.accountid);
        
        account = [select id,BillingCity,BillingCountry,BillingPostalCode,BillingState from Account where Id =:opp1.accountid];
        
        
        
       // account = [select Id,BillingCity,BillingCountry,BillingPostalCode,BillingState from Account where name =: accountName];
        
        
    }

    public Account getAccount(){
        return account;
    }
    
    public pagereference updateAccount(){
     
       account.BillingCity=newcity;
       account.BillingCountry=newcountry;
       account.BillingPostalCode=newpostal;
       account.BillingState=newstate;
        
        update account; 
        
        return null;      
        
    }
    
    
}