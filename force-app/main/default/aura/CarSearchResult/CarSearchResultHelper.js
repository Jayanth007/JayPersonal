({
    onSearch : function(component, event, helper) {
        helper.callServer(component,
                          "c.getCars",
                          function(response){
                              
                              if(response.length>0){ 
                                  //alert("response in onsearch"+response[0].Name);
                                  component.set("v.cars",response);
                                  component.set("v.carFound",true);
                              }else{
                                  component.set("v.carFound",false);
                              }
                          },
                          {	
                              carTypeId: component.get("v.carTypeIdComponent")
                          }
                         )
    }
})