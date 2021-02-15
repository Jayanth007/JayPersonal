import { LightningElement, track } from 'lwc';
import getAllCases from '@salesforce/apex/CaseController.getAllCases';
export default class ApexImperativeMethod extends LightningElement {
  @track param;
  @track records;
  @track errors;

  handleChange(event) {
    const sVal = event.target.value;
    //alert(sVal);
    getAllCases({
      subject: sVal
    })
      .then(result => {
        console.log('cases:' + result[0].status);
        this.records = result;
      })
      .catch(error => {
        console.log('Error' + error);
        this.errors = error;
      });
  }
}