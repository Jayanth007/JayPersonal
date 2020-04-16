public class RandomContactFactory 
{
 public static List<Contact> generateRandomContacts(Integer numConctacts,string lastttName)
 {
     list<Contact> conctactslist = new list<Contact>();         
     for(integer i=1;i<=numConctacts;i++)
     {
           conctactslist.add(new Contact( FirstName='Test'+i , LastName=lastttName ));        
     }
     return conctactslist;
 }
}