import { LightningElement ,api,track} from 'lwc';

export default class ChildComp extends LightningElement {
    @api message;
    @api pageno;
    @track date = new Date();

    @api
    childMethod(v1,v2){
        this.date = new Date();
        this.message =v1;
        this.pageno = v2;
    }

    handleEvent(){
        //create event 
        const events = new CustomEvent(
            'simple',
            {
                bubbles : true,
                composed : true
           

            }
        
        );
        //Dispatch the event 
        this.dispatchEvent(events);       
    }



}