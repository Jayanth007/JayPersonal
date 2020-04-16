public class StudentAidController {
    public final Student__c studentRecord;
    public StudentAidController(ApexPages.StandardController sc){
        studentRecord=(Student__c)sc.getRecord();
    }
    public PageReference applyForAid(){
        studentRecord.AppliedForFinancialAid__c=true;
        update studentRecord;
        return null;
    }
    @AuraEnabled
    public static student__c getStudent(ID studentID){
        if(studentID==null) return null;
        List<Student__c> students = [select Id,AppliedForFinancialAid__c from Student__c where id =:studentID];
        if(students.size()>0){
            return students[0];
        }
        return null;
    }
    @RemoteAction @AuraEnabled
    public static void applyForAidAction(ID studentID){
        List<Student__c> students = [select Id,AppliedForFinancialAid__c from Student__c where id =:studentID];
        if(students.size()>0){
            students[0].AppliedForFinancialAid__c=true;
            update students;
        }
    }
}