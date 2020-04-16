({
	loadRecord : function(componet,studentID) {
		var action =component.get("c.getStudent");
        if(studentID == null) return;
        action.setParams({"studentId":studentID});
        //call back behaviour
        action.setcallback(this,function(response){
            var state = response.getstate();
            if(component.isValid()&& state=="SUCCESS"){
                component.set("v.student",response.getReturnvalue());
               }
            else{
                console.log("Failed with state :"+state);
            }
            
            
        });
        $A.enqueueAction(action);
	}
})