public class CallUpdateAccountFieldsBatch {
// Query for 10 accounts
    public static void call(){
String q = 'SELECT Industry FROM Account LIMIT 100';
String e = 'Account';
String f = 'Industry';
String v = 'Consulting';
   
Id batchInstanceId = Database.executeBatch(new UpdateAccountFields(q,e,f,v), 1); 
}
}