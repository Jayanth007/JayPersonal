import { LightningElement, track, api } from 'lwc';

export default class PropertyDemo extends LightningElement {
    //Non reactive Private property example but as per my observation it is working as track
    //message = 'Non-Reactive Property'; 

    //Private reactive property
    @track message = 'Non-Reactive Property';

    //public reactive property
    @api messageApi = 'Non-Reactive Property';

    get name(){
        return 'Jay';
    }
    get changeMessage(){
        return this.messageApi+'added value using the get prop';
    }

    handleChange(event){
        this.messageApi = event.target.value;
        console.log('Updated message after the change is:'+this.messageApi);
    }


}