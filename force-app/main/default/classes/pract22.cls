public class pract22 {
    
    public static void prac(){
        SObject s = [select Owner.Profile.Name  from account limit 1];
        string profilename=(string)s.getSObject('owner').getsobject('Profile').get('Name');
        system.debug(profilename);
        
    }
    public static void GlobalVariables(){
        string name = Userinfo.getLastName();
            system.debug(name);
    }

}