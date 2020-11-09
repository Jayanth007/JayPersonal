trigger AccountAddressTrigger on Account (before insert, after update)
{
for(Account a :trigger.new )
    
{
    if(a.Match_Billing_Address__c==true)
    {
        a.ShippingPostalCode='sample';
    }
}
}