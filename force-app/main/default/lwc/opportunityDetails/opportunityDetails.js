import { LightningElement, api } from "lwc";

export default class OpportunityDetails extends LightningElement {
  @api recordId;
  @api objectApiName;

  constructor() {
    super();
    console.log("recordId" + this.recordId);
    console.log("Object Info" + this.objectApiName);
  }
}
