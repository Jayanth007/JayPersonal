public with sharing class carSearchcontroller {
    
    @AuraEnabled
    public static List<Car__c> getCars(string carTypeId){
        //carTypeId='a2G0K000000kE6FUAU';
        //if "All Type" is selected from the UI,below code will call execute to get all cars
        //if(carTypeId.equalsIgnoreCase('default')|| carTypeId==null){
        if(carTypeId!=null){
            return [select id,name,Picture__c,contact__r.Name,
                    Geolocation_latitude__c,Geolocation_longitude__c
                    from Car__c
                    where Available_For_Rent__c=true
                   ];
        }else{
            system.debug('enetered else in call server');
            system.debug([select id,name,Picture__c,contact__r.Name,
                    Geolocation_latitude__c,Geolocation_longitude__c
                    from Car__c
                    where Car_Type__c=:carTypeId and Available_For_Rent__c=true
                   ]);
            return [select id,name,Picture__c,contact__r.Name,
                    Geolocation_latitude__c,Geolocation_longitude__c
                    from Car__c
                    where Car_Type__c=:carTypeId and Available_For_Rent__c=true
                   ];
        }
    }
    
}