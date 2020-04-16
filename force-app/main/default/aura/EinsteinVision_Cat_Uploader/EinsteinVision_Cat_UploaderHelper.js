({
    onUploadImage: function(component, file, base64Data) {
        var action = component.get("c.getCatPrediction");
        var catId = component.get("v.recordId");
        action.setParams({
            catId: catId,
            fileName: file.name,
            base64: base64Data
        });
        action.setCallback(this, function(a) {
            component.set("v.spinnerWaiting", false);
            var state = a.getState();
            if (state === 'ERROR') {
                console.log(a.getError());
                alert("An error has occurred");
            } else {
               $A.get('e.force:refreshView').fire();   
            }
        });
        component.set("v.spinnerWaiting", true);
        $A.enqueueAction(action); 
    },
    onGetImageUrl: function(component, file, base64Data) {
        var action = component.get("c.getImageUrlFromAttachment");
        var catId = component.get("v.recordId");
        action.setParams({
            catId: catId
        });
        action.setCallback(this, function(a) {
            var state = a.getState();
            if (state === 'ERROR') {
                console.log(a.getError());
                alert("An error has occurred");
            } else {
                if (!a.getReturnValue()=='') {
                    component.set("v.image", "/servlet/servlet.FileDownload?file=" + a.getReturnValue());	                    
                }
            }
            
        });
        $A.enqueueAction(action);
    }
})