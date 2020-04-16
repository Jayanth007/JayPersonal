public class SameController 
{
   public String firstName {get;set;}
    public String last {get;set;}
    
    //Constructor
    public SameController(){
        firstName = System.currentPageReference().getParameters().get('firstName');
        last = System.currentPageReference().getParameters().get('last');
    }
}