@isTest
public class TestRestrictContactByName 
{
    @isTest static void testInvalidNamePositive()
    {
        Contact c = new Contact();
      c.LastName='notINVALIDNAME';
        Database.SaveResult r = Database.insert(c, false);
        System.assertEquals(r.isSuccess(), true);
       
    }
     @isTest static void testInvalidNameNegative()
    {
         Contact c1 = new Contact();
       c1.LastName='INVALIDNAME';
          Database.SaveResult r1 = Database.insert(c1, false);
  System.assertEquals(r1.isSuccess(), false);
    }
}