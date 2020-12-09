import { LightningElement } from 'lwc';

export default class ParentComp extends LightningElement {

    handelSimpleEvent(event){
        const message = event.target.message;
        alert('Event Handled'+message);
    }

    handleClick(){
        this.template.querySelector('c-child-comp').childMethod('ttttt','999');        


    }
}