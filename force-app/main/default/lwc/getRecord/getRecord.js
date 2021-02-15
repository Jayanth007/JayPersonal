import { api, LightningElement, wire } from 'lwc';
import { getRecord, createRecord } from 'lightning/uiRecordApi';
import ACCOUNT_OBJECT from '@salesforce/schema/Account';
import ACC_NAME_FIELD from '@salesforce/schema/Account.Name';

export default class GetRecord extends LightningElement {
  @api recordId;

  @wire(getRecord, {
    recordId: '$recordId',
    layoutTypes: ['Full', 'Compact'],
    modes: ['View', 'Edit', 'Create']
  })
  wiredRecord({ data, error }) {
    if (data) {
      console.log('Data' + data);
    }
    if (error) {
      console.log('error' + error);
    }
  }

  handleCreate() {
    const fields = {};
    fields[ACC_NAME_FIELD.fieldApiName] = 'Jayfield';
    const accountRecord = {
      apiName: ACCOUNT_OBJECT.objectApiName,
      fields: fields
    };
    createRecord(accountRecord)
      .then(result => {
        const id = result.id;
      })
      .catch(error => {
        console.log('Error' + error);
      });
  }
}