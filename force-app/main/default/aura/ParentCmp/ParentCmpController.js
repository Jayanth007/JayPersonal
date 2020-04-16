({
     callAuraMethod : function(component, event, helper) {
            var childCmp = component.find("childComponent");
            var retnMsg = childCmp.GetMessageFromChildMethod('Amit');
            component.set("v.message", retnMsg);
     }
})