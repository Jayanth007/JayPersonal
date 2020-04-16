public class MyHelloWorld {
// This method updates the Description field for a list
// of accounts to read "Hello World".
/*
public static void addHelloWorld(Account[] accs){
for (Account a:accs){
if (a.Description != 'Hello World')
a.Description = 'Hello World';
}}
 */   
    //Added on 20-05-18 while doing the apex developer gudie
    
    public static void applyDiscount(Book__c[] books){
        for (book__c b: books){
            b.Price__c *=0.9;
        }  
    }

}