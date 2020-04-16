public class DMLoperations {
public static LIST<Contact> con=null;
    public static void CreateMultipleContacts(){
         con = new LIST<Contact>
        {
            new Contact(FirstName='Joe',LastName='Smith',Department='Finance'),
            new Contact(FirstName='Kathy',LastName='Smith',Department='Technology'),
            new Contact(FirstName='Caroline',LastName='Roth',Department='Finance'),
            new Contact(FirstName='Kim',LastName='Shain',Department='Education')
                };
    }
    public static void insertContacts()
    {
        Insert con;
    }
    public static void UpdateContacts()
    {
        for(Contact c : con)
        {
            if(c.Department=='Finance')
                c.Department='Changed from finance to sale and operations';
        }
        update con;
    }
}