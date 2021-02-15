import { api, LightningElement, track } from 'lwc';
import findRecords from '@salesforce/apex/LookupController.findRecords';

export default class CustomLookUp extends LightningElement {
  @api ObjectApiName;
  @api fiedlApiName;
  @api iconname;
  @track records;
  @track errors;
  @track selectedRecord;

  handleSearch(event) {
    const searchVal = event.detail;

    findRecords({
      objectName: this.ObjectApiName,
      feildApiName: this.fiedlApiName,
      searchValue: searchVal
    })
      .then(result => {
        console.log('Record are' + result);
        this.records = result;
        this.errors = undefined;
      })
      .catch(error => {
        this.errors = error;
        this.records = undefined;
        console.log('Error :' + error);
      });
  }
  handleSelect(event) {
    const recordId = event.detail;
    const selectedRec = this.records.find(record => record.Id === recordId);
    console.log(' Selected Record ', selectedRec);
    this.selectedRecord = selectedRec;
  }

  handleRemove() {
    this.selectedRecord = undefined;
    this.errors = undefined;
    this.records = undefined;
  }
}