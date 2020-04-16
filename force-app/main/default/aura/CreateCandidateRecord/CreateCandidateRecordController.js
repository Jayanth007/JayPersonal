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
 Lightning Controller  Details
 Name: CreateCandidateRecordController.js
 Type: Lightning Controller 
 Purpose: Controller for  lightning component 
		  CreateCandidateRecordController.cmp
 ***********************************************************/
({
	
    create : function(component, event, helper) {
		console.log('Create record');
       // var $k = jQuery.noConflict();
        //getting the candidate information
        var candidate = component.get("v.candidate");
        
        //Validation
        if($A.util.isEmpty(candidate.First_Name__c) || $A.util.isUndefined(candidate.First_Name__c)){
            //Access Custom Label in Javascript
            alert($A.get("$Label.c.FirstNameRequired"));
        }            
        else if($A.util.isEmpty(candidate.Last_Name__c) || $A.util.isUndefined(candidate.Last_Name__c)){
            alert($A.get("$Label.c.LastNameRequired"));
        }
        else if($A.util.isEmpty(candidate.Email__c) || $A.util.isUndefined(candidate.Email__c)){
            alert($A.get("$Label.c.EmailRequired"));
        }
        else if($A.util.isEmpty(candidate.SSN__c) || $A.util.isUndefined(candidate.SSN__c)){
            alert($A.get("$Label.c.SSNRequired"));
        }
        else {
            //Calling the Apex Function
            var action = component.get("c.createRecord");
            
            //Setting the Apex Parameter
            action.setParams({
                candidate : candidate
            });
            
            //Setting the Callback
            action.setCallback(this,function(a){
                //get the response state
                var state = a.getState();
                
                //check if result is successfull
                if(state == "SUCCESS"){
                    //Get the Response From Apex
                    var result = a.getReturnValue();
                    
                    //Check if Success in Apex Class
                    if(result.isSuccess){
                       //Reset Form
                        var newCandidate = {'sobjectType': 'Candidate__c',
                                            'First_Name__c': '',
                                            'Last_Name__c': '',
                                            'Email__c': '', 
                                            'SSN__c': ''
                                           };
                        //resetting the Values in the form
                        component.set("v.candidate",newCandidate);
                        alert(result.successMsg); 
                    } else {
                        alert(result.errorMsg);
                    }
                    
                } else if(state == "ERROR"){
                    alert('Error in calling server side action');
                }
            });
            
            //adds the server-side action to the queue        
            $A.enqueueAction(action); 
        }
        

	}
    
    
})