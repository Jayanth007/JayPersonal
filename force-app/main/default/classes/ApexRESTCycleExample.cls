@RestResource(urlMapping='/CycleExample/*')
global with sharing class ApexRESTCycleExample {
 
    @HttpGet
    global static MyUserDef1 doCycleTest() {
        MyUserDef1 def1 = new MyUserDef1();
        MyUserDef2 def2 = new MyUserDef2();
        def1.userDef2 = def2;
        def2.userDef1 = def1;
        return def1;
    }
 
    global class MyUserDef1 {
        MyUserDef2 userDef2;
    }    
 
    global class MyUserDef2 {
        MyUserDef1 userDef1;
    }
    
}