public with sharing class CarTypeSearch {

    @AuraEnabled
    public static list<Car_Type__c> getCarType(){
        return [select id,Name from Car_Type__c];
    }
}