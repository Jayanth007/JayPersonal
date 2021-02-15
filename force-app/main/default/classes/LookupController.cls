public with sharing class LookupController {
  public LookupController() {
  }

  @AuraEnabled(cacheable=true)
  public static List<SObject> findRecords(
    string objectName,
    String feildApiName,
    string searchValue
  ) {
    try {
      string key = '\'%' + searchValue + '%\'';
      string query =
        'select Id,' +
        feildApiName +
        ' From ' +
        objectName +
        ' where ' +
        feildApiName +
        ' Like ' +
        key;
      System.debug('qurery string' + query);
      List<Sobject> sobjectList = Database.query(query);
      return sobjectList;
    } catch (Exception e) {
      throw new AuraHandledException(e.getMessage());
    }
  }
}