public class AddmultipleAccountsController 
{
    
    Account account = new Account();
    public list<Account> listAccount{get;set;}
    public AddmultipleAccountsController()
    {
        listAccount = new list<Account>();
        listAccount.add(account);        
    }
    public void AddAccount()
    {
        Account acc = new Account();
        listAccount.add(acc);
    }
    public PageReference SaveAccount()
    {
        for(Integer i=0;i<listAccount.size();i++)
        {
            insert listAccount;
        }
        return Page.Allaccountssaved;
    }
}