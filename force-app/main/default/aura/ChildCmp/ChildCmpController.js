({
    getMessage : function(component, event) {
        var params = event.getParam('arguments');
        if (params) {
            var param1 = params.Name;
            return "##### Hello "+param1+" From Child Component #####";
        }
        return "";
    }
})