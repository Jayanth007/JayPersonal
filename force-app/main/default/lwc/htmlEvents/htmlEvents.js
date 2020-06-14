import { LightningElement } from 'lwc';

export default class HtmlEvents extends LightningElement {
    message = 'Welcome';
    handlechange(event){
        const val = event.target.value;
        const lbl = event.target.label;
         console.log(val+'@@@@@@@'+lbl);
    }
}