global class UpdateAccountFields implements Database.Batchable<sObject>{
    
    global final string Query;
    global final string Entity;
    global final string Field;
    global final string Value;
    
    global UpdateAccountFields(string q,string e,string f, string v){
        Query=q;Entity=e;Field=f;Value=v;        
    }
    global Database.QueryLocator start(Database.BatchableContext bc){
        return Database.getQueryLocator(Query);
        
    }
    global void execute(Database.BatchableContext bc,list<sObject> scope){
        for(sObject s : scope){
            s.put(field, value);
        }update scope;
    }
    global void finish(Database.BatchableContext bc){
        
    }
    
 
 
    
    
}