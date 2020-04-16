public class ContactSearch
{
    public static List<Contact> searchForContacts(String Str1, String Str2)
    {
        List<Contact> ContactList = [select ID,Name from Contact where LastName = :Str1 and MailingPostalCode = :Str2];
        return ContactList;
    }
}