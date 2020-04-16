public with sharing class OutBoundEmail 
{
	public void SendEmail()
	{
		EmailTemplate et = [select id from emailtemplate where name= 'Test'];
		Messaging.SingleEmailMessage msg = new messaging.SingleEmailMessage();
	}
    
}