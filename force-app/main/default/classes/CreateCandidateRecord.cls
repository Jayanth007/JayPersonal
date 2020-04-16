/*
 * DISCLAIMER:
THIS CODE IS PROVIDED BY THE AUTHOR "AS IS" AND ANY EXPRESS OR
IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES
OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED.
IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY DIRECT, INDIRECT, 
INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT
NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF
THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 * */
/************************************************************
 Name: CreateCandidateRecord
 Type: Apex Class  
 Purpose: Apex Class  for  lightning component 
		  CreateCandidateRecordController.cmp
 ***********************************************************/
 

public with sharing class CreateCandidateRecord 
{

    //String Constant for Success Message 
    private static final string  SUCCESS_MESSAGE = 'Record created successfully';
    
    //String Constant for Error Message
    private static final string  ERROR_MESSAGE = 'Error	Message From Apex: n';
    
    /************************************************************
	* Name :    createRecord
   * Type :    Aura Enabled Method with wrapper return type
   * Purpose:  1.Create a new candidate Record using 
   *             Lightning Component
   *           2.Add Succcess and Error Messages to display in 
   *             Lightning Component 
   **************************************************************/
    @AuraEnabled
    public static AuraProcessingMessage createRecord (Candidate__c candidate){
        
        Savepoint sp = Database.setSavepoint();
        
        //Initializing the wrapper message 
        AuraProcessingMessage returnMessage = new AuraProcessingMessage();
        
        try{
            System.debug('CreateCandidateRecord::createRecord::candidate'+candidate);
            
            if(candidate != null)
            {
                insert candidate;
                //Adding the success message if the record is created
                returnMessage.successMsg=SUCCESS_MESSAGE;
            }
            
        } 
         catch(Exception ex)
         {
            system.debug('Debug Exception Message'+ex.getMessage());
            returnMessage.isSuccess = false;
            
            //Adding the error message if an exception is occured
            returnMessage.errorMsg = ERROR_MESSAGE + ex.getMessage();
            
            //Rollback the transaction if an exception is occured
            Database.rollback(sp);
        }
        //Return the error message
        return returnMessage;
        
    }  
        
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
}