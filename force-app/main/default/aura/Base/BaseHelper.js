({
	callServer : function(component,method, callback, params) {
      var action = component.get(method);
        if(params){
            action.setParam(params);
        }
        action.setCallback(this,function(response){
            //alert(response);
            var state= response.getState();
            if(state==="SUCCESS"){
                //pass return value to call back
                callback.call(this,response.getReturnValue());
                
            }else if(state==="ERROR"){
                //generic error handler
                var errors = response.getError();
                if(errors){
                    console.log("@@@Errors:"+errors[0].message+"@@"+response.getReturnValue());
                    if(errors[0] && errors[0].message){
                        throw new Error("@@@Error"+error[0].message);                        
                    }
                }else {
                        throw new Error("@@@Unknown Error");
                    }
                } 
            
        });
        $A.enqueueAction(action);
	}
})