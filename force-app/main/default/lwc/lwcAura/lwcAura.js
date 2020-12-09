import { api, LightningElement } from 'lwc';

export default class LwcAura extends LightningElement {

    @api
    childMethodLWC(message) {
        console.log('child comp method in LWC is executed');
        console.log('Message passed is :'+message);
    }

    handleClick() {
        //Create a event 
        const eventN = new CustomEvent(
            'select',
            {
                detail: {
                    message: 'This message is from LWC component'

                }
            }
        );
        //dispatch the events 
        this.dispatchEvent(eventN);
    }


}