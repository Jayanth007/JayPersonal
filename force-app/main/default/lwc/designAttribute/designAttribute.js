import { api, LightningElement } from 'lwc';

export default class DesignAttribute extends LightningElement {
  @api height;
  @api width;
  @api message;
}