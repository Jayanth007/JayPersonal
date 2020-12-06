import { LightningElement,track } from 'lwc';

export default class CalculatorCmp extends LightningElement {
    number1;
    number2;

    @track result;

    handleChangeEvent(event){
        const val = event.target.value;
        const name = event.target.name;
        if(name === 'number1'){
            this.number1 =val;
        }else{
            this.number2 = val;
        }
    }
    doSum(){
        const sum = parseInt(this.number1) + parseInt(this.number2);
        //alert('sum'+ sum);
        this.result =sum;

    }
    doSub(){
        const sub = parseInt(this.number1) - parseInt(this.number2);
        //alert('sub'+ sub);
        this.result = sub;
    }

    doMulti(){
        const mul = parseInt(this.number1) * parseInt(this.number2);
        //alert('multi'+ mul);
        this.result = mul;
    }

    doDiv(){
        const div = parseInt(this.number1) / parseInt(this.number2);
        //alert('div'+ div);
        this.result = div;
    }

}