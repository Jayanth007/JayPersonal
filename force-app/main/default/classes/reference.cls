public class reference 
{
    public list<account> arecs{get;set;}
    
    Public string refAcc = apexpages.currentPage().getparameters().get('selectedname');
    
    Account[] acc = [select id from Account where name = 'selectedname'];
}