public class CommonControl {

    public string strInputFld {set;}
    public string toPageValue{set;}
    public string gettoPageValue(){
        return System.currentPagereference().getParameters().get('payloadbase64');
    }
    public string getStrInputFld(){
        return 'test is for post send and receive';
    }
    public PageReference redPost(){
        PageReference rPost = Page.ToPage;
        rPost.getParameters().put('Alias','myex value');
        rPost.setRedirect(true);
        return rPost;
    }

}