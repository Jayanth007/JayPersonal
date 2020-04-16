public class AccountHandler {
    
    public static Account insertNewAccount( string AccName)
    {
        try{
        Account acc = new Account( Name = AccName);
        insert acc;
        Account acc1 = new Account( Name = 'test');
        insert acc1;
        return acc;
        }
        catch(DmlException e)
        {
            system.debug('empty string passed');
            return null;
        }
    }

}