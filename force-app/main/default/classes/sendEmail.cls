public class sendEmail {
    public String subject { get; set; }
    public String body { get; set; }

    private final Account account;

    // Create a constructor that populates the Account object
    public sendEmail() {
        account = [select Name, (SELECT Contact.Name, Contact.Email FROM Account.Contacts) 
                from Account where id = :ApexPages.currentPage().getParameters().get('id')];
    }

    public Account getAccount() {
        return account;
    }

    public PageReference send() {
        // Define the email
        Messaging.SingleEmailMessage email = new Messaging.SingleEmailMessage(); 

    String addresses;
    if (account.Contacts[0].Email != null)
    {
        addresses = account.Contacts[0].Email;
        // Loop through the whole list of contacts and their emails
        for (Integer i = 1; i < account.Contacts.size(); i++) 
        {
            if (account.Contacts[i].Email != null)
            {
                addresses += ':' + account.Contacts[i].Email;
            }
        }
    }

        String[] toAddresses = addresses.split(':', 0);

        // Sets the paramaters of the email
        email.setSubject( subject );
        email.setToAddresses( toAddresses );
        email.setPlainTextBody( body );
    
        // Sends the email
        Messaging.SendEmailResult [] r = 
            Messaging.sendEmail(new Messaging.SingleEmailMessage[] {email});   
        
        return null;
    }
}