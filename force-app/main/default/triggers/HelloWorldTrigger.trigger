trigger HelloWorldTrigger on Account (before insert) 
{
    //new values that are about to be updated will taken into the conserdation
     for(Account a : Trigger.New) 
     {
         // in before triggers we noo need to use the dml statements explicitly..If we use we will get the error
         
        a.Description = 'New description';
    }  
   
}