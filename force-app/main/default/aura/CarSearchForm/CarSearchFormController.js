({
    doInit : function(component, event, helper) {
        //How check whether below feature is available or not...because few features are not available in standalone application
        var createRecord =$A.get("e.force:createRecord");
        //alert("create record"+createRecord);
        if(createRecord){
           component.set("v.showNew",true);
        }else{
            component.set("v.showNew",false);
        } 
        //browser debugger can be put like this
       // debugger;
        
        //need to pull the data from here       
        //alert("component initiated...init")
       // component.set("v.carTypes",["Sports CarInit","Audiinit","Benzfromconiniti"]);
       
        //Pull data from the server
        helper.getCarType(component, event, helper) ;
    },
    handleRender : function(component, event, helper) {
        //need to pull the data from here
        //component.set("v.carTypes",["Sports Carrender","Audirender","Benzrender"])
        //alert("renedered")
    },
    handler : function(component, event, helper) {
        //alert("button clicked from button");
        helper.helperMethod(component, event, helper);
    },
     onClickSearch : function(component, event, helper) {
       var searchFormSubmit = component.getEvent("searchFormSubmit");
         searchFormSubmit.setParams({
             "carTypeId" : component.find("carTypeList").get("v.value")
         });
         searchFormSubmit.fire();
    },
    toggleButton: function(component, event, helper){
        var currentValue=component.get("v.showNew");
        if(currentValue===true){
            component.set("v.showNew",false);
        }else{
            component.set("v.showNew",true);
        }
        
    },
    createRecord :function(component, event, helper){
        var createCarRecord =$A.get("e.force:createRecord");
        createCarRecord.setParams({
            "entityApiName":"Car_Type__c"
        });
        createCarRecord.fire();
    },
    newValueSelected : function(component, event, helper) {
       /* var carTypeId=component.find("carTypeList").get("v.value");
        alert(carTypeId);
        component.find("carTypeList").set("Audi");
        alert(component.find("carTypeList").get("v.label"));
        */
    }
})