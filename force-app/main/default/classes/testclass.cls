public with sharing class testclass {
public Job__c job{get;set;}
public String selectedValue  {get;set;}

public List<SelectOption> options{get;set;}
public testclass(){
options = new List<SelectOption>();
Schema.DescribeFieldResult fieldResult = Job__c.Status__c.getDescribe();
List<Schema.PicklistEntry> ple = fieldResult.getPicklistValues();
for( Schema.PicklistEntry f : ple){
options.add(new SelectOption(f.getLabel(), f.getValue()));
}
}
}