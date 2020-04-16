trigger userCreationWithRef on User_Creation__c (before insert) {

string refid =trigger.new[0].Ref_User__c;

user u = [select id from user where id=:refid ];

user newUser=u.clone(false, false, false, false);

insert newUser;

trigger.new[0].New_user_ID__c=newUser.id;

}