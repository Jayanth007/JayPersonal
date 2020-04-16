public class Pricematrix_Matrixdata_controller {

public list<Matrix_Data__c> MD {get;set;}
public list<Price_Matrix__c> PM {get;set;}

public Pricematrix_Matrixdata_controller (){

PM= [select id ,name, Is_Active__c, (select id, name,Input_data__c,Output_Data__c from Matrix_Datas__r) from Price_Matrix__c where Is_Active__c=true];



//PM= [select id ,name, Is_Active__c from Price_Matrix__c];

}



}