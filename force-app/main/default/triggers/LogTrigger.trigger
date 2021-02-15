trigger LogTrigger on Log__e(after insert) {
  //new LogTriggerHandler.run();
  list<logevent__c> events = new List<logevent__c>();
  if (Trigger.isAfter && Trigger.isInsert) {
    for (Log__e event : Trigger.New) {
      events.add(
        new logevent__c(
          log_date__c = Event.log_message__c,
          Quiddity__c = Event.Quiddity__c,
          request_Id__c = Event.request_Id__c,
          severity__c = Event.Severity__c
        )
      );
    }
    try {
      Database.insert(events, false);
    } catch (DmlException dml) {
      System.debug(LoggingLevel.ERROR, dml.getMessage());
    }
  }

}