import { api, LightningElement } from "lwc";

export default class LdsViewRecord extends LightningElement {
  @api recordId;
  @api objectApiName;

  handleSuccess() {
    alert("Successfully saved");
  }
}