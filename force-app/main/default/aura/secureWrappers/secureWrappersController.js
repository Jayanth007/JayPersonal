({ /* secureWrappersController.js */
    peekInDom : function(cmp, event, helper) {
        console.log("div1: ", cmp.find("div1").getElement());
        
        console.log("button1: ", cmp.find("button1"));
        console.log("button name: ", event.getSource().get("v.name"));
        // add debugger statement for inspection
        // always remove this from production code
        debugger;
    }
})