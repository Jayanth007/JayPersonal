({
    myAction : function(component, event, helper) {
        var counter = component.get("v.myAttribute");
        counter++;
        component.set("v.myAttribute", counter);
    },
})