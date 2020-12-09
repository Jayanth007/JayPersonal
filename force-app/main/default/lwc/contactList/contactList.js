import { LightningElement ,api} from 'lwc';

export default class ContactList extends LightningElement {
    contacts = [
        {
            Id : 1,
            Name : 'Jay',
            Email : 'abc@gmail.com',
            Phone : '12345'
        },
        {
            Id : 2,
            Name : 'Jay2',
            Email : 'abc2@gmail.com',
            Phone : '22222'
        },
        {
            Id : 3,
            Name : 'Jay3',
            Email : 'abc3@gmail.com',
            Phone : '333'
        }

    ];


}