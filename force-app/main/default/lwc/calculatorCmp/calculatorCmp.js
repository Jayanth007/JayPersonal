import { LightningElement } from 'lwc';

export default class CalculatorCmp extends LightningElement {
    number1;
    number2;

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
        alert('sum'+ sum);

    }
    doSub(){
        const sub = parseInt(this.number1) - parseInt(this.number2);
        alert('sub'+ sub);
    }

    doMulti(){
        const mul = parseInt(this.number1) * parseInt(this.number2);
        alert('multi'+ mul);
    }

    doDiv(){
        const div = parseInt(this.number1) / parseInt(this.number2);
        alert('div'+ div);
    }

}