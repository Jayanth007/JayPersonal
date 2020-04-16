public class DuplicateLead {
     public static void Duplicaterec(){    
    Set<String> ss = new Set<String>();
         Group financialExpQueue = [Select Id from Group where Type = 'Queue' AND Name = 'Financial Expertise' LIMIT 1];
        
     for(AggregateResult aggregate : [SELECT Email FROM Lead GROUP BY Email HAVING count(Id) >1]) 
   ss.add((String)aggregate.get('Email'));
   
    LIST<Lead> dup = [select id ,email from lead where email IN : ss];
         
         for(Lead l : dup)
         {
             if(System.today()-30 > l.CreatedDate){
                  l.OwnerId = financialExpQueue.Id;
             }
         }
    }

}