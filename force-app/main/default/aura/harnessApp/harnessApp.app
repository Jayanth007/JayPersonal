<aura:application >
     <aura:handler name='init' value="{!this}" action="{!c.doInit}" />
    <c:myFirstComponent />
    <c:myEverythingComponent />
   <c:helloWorld />
	<c:helloMessage message="Value passed from the application comp"/>
    <c:helloPlayground />
</aura:application>