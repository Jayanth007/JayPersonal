/**
 * This class contains unit tests for validating the behavior of Apex classes
 * and triggers.
 *
 * Unit tests are class methods that verify whether a particular piece
 * of code is working properly. Unit test methods take no arguments,
 * commit no data to the database, and are flagged with the testMethod
 * keyword in the method definition.
 *
 * All test methods in an organization are executed whenever Apex code is deployed
 * to a production organization to confirm correctness, ensure code
 * coverage, and prevent regressions. All Apex classes are
 * required to have at least 75% code coverage in order to be deployed
 * to a production organization. In addition, all triggers must have some code coverage.
 * 
 * The @isTest class annotation indicates this class only contains test
 * methods. Classes defined with the @isTest annotation do not count against
 * the organization size limit for all Apex scripts.
 *
 * See the Apex Language Reference for more information about Testing and Code Coverage.
 */
@isTest
private class MyHelloWorldTest {
// Simple test of the method
// MyHelloWorld.addHelloWorld(Account[])
    static testMethod void test_addHelloWorld()
{
// Set up test data set
Account testAcct1 = new Account();
Account testAcct2 = new Account(Description = 'Foo');
Account[] accts = new Account[] { testAcct1, testAcct2 };
// Execute code with test data
MyHelloWorld.addHelloWorld(accts); // call
// Confirm results
System.assertEquals('Hello World', accts[0].Description);
System.assertEquals('Hello World', accts[1].Description);
}

// Simple test of the trigger helloWorldAccountTrigger
static testMethod void test_helloWorldAccountTrigger()
{
// Set up test data set
Account testAcct1 = new Account(Name='One');
Account testAcct2 = new Account(Name='Two', Description = 'Foo');
Account[] accts = new Account[] { testAcct1, testAcct2 };
// Execute trigger with test data set
insert accts;
// Confirm results
Account[] acctQuery = [SELECT Description FROM Account WHERE Id = :accts[0].Id OR
Id = :accts[1].Id];
System.assertEquals('Hello World', acctQuery[0].Description);
System.assertEquals('Hello World', acctQuery[1].Description);
}
}