({
	doInit : function(component, event, helper) {
		helper.onSearch(component, event, helper);
	},
    doSearch : function(component, event, helper){
        //this line will get all the argument passed to aura:method
        //below line should be arguments only
        debugger;
        var params= event.getParam('arguments');
        //checking if param is not undefined
        if(params){
            //getting carTypeId from argumentList and setting component attribute value
            component.set("v.carTypeIdComponent",params.carTypeId);
            helper.onSearch(component,helper);
        }
    }
})