import { LightningElement } from 'lwc';

export default class HooksExample extends LightningElement {
    name ='Jay';
    constructor(){
        super();
        console.log('Inside the constructor');
        this.name += 'T';
    }

    connectedCallback(){
        console.log('Connectedcallback');
    }

    disconnectedCallback(){
        console.log('disconnectedCallback');
    } 

        /*
    render(){

    }
    */ 

    renderedCallback(){
        console.log('renderedCallback');
    }

   errorCallback(error,stack){
       console.log(error);
   }
}