import { LightningElement,track } from 'lwc';

export default class IfElse extends LightningElement {
    @track istext =false;
    @track isnum =false;
     
     dd = today.getDate();
    
    //d.setdate(12);
    showtext(){
        this.istext = true;
        alert('text true');

    }
    shownumber(){
        this.isnum = true;
        alert('Num true');
    }
}