({
	helperMethod : function(component, event, helper) {
		//alert("called from the helper method");
	},
    
    getCarType :function(component, event, helper) {
		/*
        var action = component.get("c.getCarType");
        action.setCallback(this,function(data){
            var state=data.getState();
            if(state==="SUCCESS"){
                component.set("v.carTypes",data.getReturnValue());
            }else if(state==="ERROR"){
                alert("unknown error");
            }            
        });
        $A.enqueueAction(action);
        */
        //We can call the above code genertically by using the base component
        helper.callServer(component,"c.getCarType",
                          function(response){
                              component.set("v.carTypes",response);
                          }
                         );
	}
    
})