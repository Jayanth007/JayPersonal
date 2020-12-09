import { LightningElement, track } from 'lwc';
import {si} from 'c/utility';
export default class SharedMisc extends LightningElement {
    @track p;
    @track r;
    @track t;

    constructor(){
        super();
        const simi = si(1000,1,10);
        console.log('simple int is'+simi);

    }
    calculatesi(){
        const simi = si(this.p,this.t,this.r);
        console.log('simple int usng UI'+simi);

    }
}