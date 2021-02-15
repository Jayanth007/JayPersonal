import { api, LightningElement } from "lwc";

export default class LdsCreateRecord extends LightningElement {
  @api objectApiName;

  handleSuccess() {
    alert("Record is Created!!!");
  }
}