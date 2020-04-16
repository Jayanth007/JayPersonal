({
	doInit : function(component, event, helper) {
        
        var recordId = component.get("v.recordId");
        if(recordId==null) return null;
        helper.loadRecord(component,recordId);
		
	},
    applyforAid:function(component,event,helper){
        var action =component.get("c.applyForAidAction");
        var recordId= component.get("v.recordId");
        if(recordId==null)return;
        action.setParams({
            "studentID":recordId
            
        });
        action.setCallback(this,function(response){
            var state =response.getState();
            if(component.isValid()&& state==="SUCCESS"){
                $A.get('e.force:refreshview').fire();
                helper.loadRecord(component,recordId);
            }
            else{
                console.log("Failed with state:"+state);
            }
        });
        
        $A.enqueueAction(action);
    }
})