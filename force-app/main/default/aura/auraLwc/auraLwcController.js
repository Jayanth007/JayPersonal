({
    doHandle: function (component, event, helper) {
        alert('Event Handled' + event.getParam('message'));

    },
    callChild: function (component, event, helper) {
        var childComp = component.find('childMethodLWC');
        childComp.childMethodLWC('Data passed from AUra to LWC method');

    }
})