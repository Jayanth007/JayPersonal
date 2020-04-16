({
	doFormSubmit : function(component, event, helper) {
        
        var carTypeId = event.getParam('carTypeId');
        console.log("selected cartypeid after event triggered"+carTypeId);

        var carSearchResultComp= component.find("carSearchResult");
        
        //cal the aura:method in the child component
        var carSearchCmpResult = carSearchResultComp.searchCars(carTypeId);
                debugger;
        console.log("auraMethodResult :"+carSearchCmpResult);
		
	}
})