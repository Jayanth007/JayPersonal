<!--<aura:application extends="force:slds"> -->
<aura:application extends="ltng:outApp" access="GLOBAL">
  <!--
<c:customLookUp
    ObjectApiName="Account"
    fiedlApiName="Name"
    iconname="standard:account"
  />
  <c:customLookUp
    ObjectApiName="Case"
    fiedlApiName="status"
    iconname="standard:case"
  />
   <c:displayRichTextComponent />
  -->
  <c:contactList />
  <aura:dependency resource="c:customLookUp" />
</aura:application>
