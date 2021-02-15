import { LightningElement } from 'lwc';

export default class MyPDFLWC extends LightningElement {
  handleChange() {
    window.print();
  }
}