import { api, LightningElement, wire } from "lwc";
import getAllCases from "@salesforce/apex/CaseController.getAllCases";

export default class WireMethod extends LightningElement {
  @api records;
  @api errors;
  @api param;
  //one way of using wire
  // @wire(getAllCases) cases; //data,error
  //
  // Anthor way of using wire
  @wire(getAllCases, { subject: `'$param'` })
  wiredCases({ data, error }) {
    if (data) {
      this.records = data;
      this.errors = undefined;
    }
    if (error) {
      this.errors = error;
    }
  }

  handleChange(event) {
    this.param = event.target.value;
    //alert("param val" + this.param);
  }
}