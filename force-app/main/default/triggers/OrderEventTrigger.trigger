trigger OrderEventTrigger on Order_Event__e (after insert) {
    // List to hold all cases to be created.
    List<Task> tasks = new List<Task>();
    
    // Get queue Id for case owner
    Group queue = [SELECT Id FROM Group WHERE Name='Regional Dispatch' LIMIT 1];
       
    // Iterate through each notification.
    for (Order_Event__e event : Trigger.New) {
        if (event.Has_Shipped__c == true) {
            // Create Case to dispatch new team.
            Task cs = new Task();
            cs.Priority = 'Normal';
            cs.status ='Completed';
            cs.Subject =  'Follow up on shipped order ' + event.Order_Number__c;
            cs.OwnerId = '005280000041bSAAAY';
            tasks.add(cs);
        }
   }
    
    // Insert all cases corresponding to events received.
    insert tasks;

}