public with sharing class CaseController {
  public CaseController() {
  }
  @AuraEnabled(cacheable=true)
  public static list<Account> getAllCases(string param) {
    try {
      string key = '%' + param + '%';
      List<account> caslist = [
        SELECT id, Name, description
        FROM Account
        WHERE Name LIKE :key
      ];
      return caslist;
    } catch (Exception e) {
      throw new AuraHandledException(e.getMessage());
    }
  }
}