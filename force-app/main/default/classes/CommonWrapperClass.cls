public class CommonWrapperClass {
    
    public class  DisplayPositionRecords{
        @AuraEnabled public boolean isSelected;
        @AuraEnabled public string positionTitle;
        @AuraEnabled public string status;
        @AuraEnabled public string positionId;
        
        public  DisplayPositionRecords(){
            isSelected=false;
            positionTitle='';
            status='';
        }
    }

}