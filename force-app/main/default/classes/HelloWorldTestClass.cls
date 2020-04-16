@istest
public class HelloWorldTestClass {
     
    @istest static void ValidateHelloWorld(){
        Book__c b = new Book__c(Name='Behind the cloud',price__c=100);
        system.debug('price before  inserting: '+b.Price__c);
		insert b;
        b=[select id ,price__c from book__c where id =:b.id];
        system.debug('price after trigger fired:'+b.Price__c);
        system.assertEquals(90, b.Price__c);
        
    }
    
}