@isTest
public class TestRandomContactFactory 
{
   @isTest static void testwithoneContact()
  {
     Contact[] cons=   RandomContactFactory.generateRandomContacts(1,'thathapudi');
      System.debug(cons[0].FirstName);
      System.assert(cons.size()==1, 'Created only one contact');
  }
     @isTest static void testwithTwoContact()
     {
         Contact[] cons2=   RandomContactFactory.generateRandomContacts(2,'thathapudi');
           //System.assert(cons2[1].FirstName:=='Test2', 'Created only one contact');
           System.assert(cons2[1].FirstName=='Test2', 'Created only two contact');
     }

}