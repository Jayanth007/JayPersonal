public with sharing class CaseController {
  public CaseController() {
  }
  @AuraEnabled(cacheable=true)
  public static list<case> getAllCases() {
    try {
      List<case> caslist = [
        SELECT id, subject, description, status, origin
        FROM case
      ];
      return caslist;
    } catch (Exception e) {
      throw new AuraHandledException(e.getMessage());
    }
  }
}
