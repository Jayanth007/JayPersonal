public class CommonControllerForVFPages {

    public String getMessage() {
        return message ;
    }

    public string firstName{get{return firstName;} set{firstName=value;}}
    public string lastName{get;set;}
    public string email{get;set;}
    Public String message ; 
    public void CommonControllerForVFPages(){
        
        message = System.currentPagereference().getParameters().get('MyName');
        
    }
    public  PageReference doPost()
    {
        PageReference displayPage = page.Displaypage;
        displaypage.getParameters().put('name',firstName);
        displayPage.setRedirect(true);
        return displayPage;
    }
}