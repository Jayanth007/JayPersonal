public class SingleController {
    public String name {
        get;
        set{
            name = value;            
        }
    }
       public String email {
        get;
        set{
            email = value;            
        }
    }
         public String lastname {
        get;
        set{
            lastname = value;            
        }
    }
    
    public PageReference goToSecondPage(){
        PageReference pageReference = new PageReference('/apex/ParamterPassingVF2');
       //1// pageReference.getParameters().put('UIname',name);
        
        //1//pageReference.setRedirect(true);
        pageReference.setRedirect(false);
        
        return pageReference;
    }
}