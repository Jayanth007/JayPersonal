trigger UpdatePriceOpp on Opportunity (before insert) {
    
    List<Product__c> opro = [Select id,name__C,Price__C from Product__c];
    Opportunity opp = trigger.new[0];
for(Product__c p: opro)
{
    if(opp.product_name__C==p.Name__C)
    {
      opp.Price__C=p.Price__C;
    }
    
}
   
    

}