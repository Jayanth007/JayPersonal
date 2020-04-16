public with sharing class wrapCustomObj {
    public Integer limitSize=5;
    public Integer offsetSize=0;
    public Integer totalRecs=0;
    public LIST<employee__c> SelectedEmp;
    
    public LIST<employee__c> getSelectedEmp()
    {
        SelectedEmp = new LIST<employee__c>();
        if(SelectedEmp.size()>0)
            return SelectedEmp;
        else
            return null;
    }
    public void lPage(){
        offsetSize=totalrecs-math.mod(totalRecs,limitSize);
    }
    public void fPage(){
        offsetSize=0;
    }
    public void next(){
        offsetSize =   offsetSize+limitSize;
    }
    public void previous(){
        offsetSize = offsetSize-limitSize;
    }
    public PageReference DisplayDetails(){
        PageReference reRend = new PageReference('/apex/Page2');
        reRend.setRedirect(false);
        return reRend;
    }
 //   public LIST<wraObj> wrpList{get;set;}
    public LIST<wrapObj> selectedwrpList{get;set;}
    public LIST<wrapObj> getempDetails(){
        if(wrpList == null){
            wrpList= new LIST<wrapObj>();
            LIST<employee__c> emps = [select id,salary__c from employee__c where salary__c !=null limit:limitSize offset:offsetSize];
            totalRecs = [select count() from employee__c];
            for(employee__c e : emps){
                wrpList.add(new wrapObj(e,false));
            }
            
            
        }
        return wrpList;}
    public List<wrapObj> getSelectEmpDetails()
{
    selectedwrpList=new List<wrapObj>();
    for(wrapObj w:getEmpDetails())
    {
        if(w.selected==true)
        selectedwrpList.add(w);
    }
    return selectedwrpList;
}
        public List<wrapObj> wrpList{
    get {
        if (wrpList == null) {
            totalRecs = [select count() from Employee__c];
            wrpList = new List<wrapObj>();
            for(Employee__c e : [
                    select id, name, salary__c from employee__c
                    where salary__c != null
                    limit :limitSize
                    Offset :OffsetSize
                    ]) {
                wrpList.add(new wrapObj(e, false));
            }
        }
        return wrpList;
    }
    private set;}
    public class wrapObj
{
    public Employee__c empDet{get;set;}
    public Boolean selected{get;set;}
    public wrapObj(Employee__c emp,boolean check)
    {
        empDet=emp;
        selected=check;
    }
}

    
    
}