/************************************************************
     Name:      AuraProcessingMessage
     Type:      Wrapper  Class  
     Purpose:   Wrapper  Class to hold error and success 
                message to  display in  lightning component 
    ***********************************************************/
    public class AuraProcessingMessage { 
        
        @AuraEnabled public Boolean isSuccess;
        @AuraEnabled public String errorMsg; //error msg
        @AuraEnabled public String successMsg; //success msg
        
        public AuraProcessingMessage(){
            isSuccess = true;
            errorMsg = '';
            successMsg = '';
        }
    }