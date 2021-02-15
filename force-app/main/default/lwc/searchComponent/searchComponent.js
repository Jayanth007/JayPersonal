import { api, LightningElement } from 'lwc';

export default class SearchComponent extends LightningElement {
  @api searchVal;

  handleChange(event) {
    const val = event.target.value;
    this.searchVal = val;

    //
    const eventN = new CustomEvent('search', {
      detail: this.searchVal
    });
    this.dispatchEvent(eventN);
  }
}