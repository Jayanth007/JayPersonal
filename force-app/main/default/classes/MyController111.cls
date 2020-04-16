public class MyController111 {
  Account account;

  public PageReference save() {
    try{
        update account;
       }
    catch(DmlException ex){
        ApexPages.addMessages(ex);
       }
    return null;
  }

  public String getName() {
    return 'MyController';
  }

  public Account getAccount() {
    if(account == null)
      account = [select id, name, numberoflocations__c from Account
        where id = :ApexPages.currentPage().getParameters().get('id')];
      return account;

  }
}