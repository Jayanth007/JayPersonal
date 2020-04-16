trigger DontDelAccHasChild on Account (before Delete) {
/*
if(trigger.isbefore && trigger.IsDelete) {

List<Account> accList =[Select id,name,(select id,name from contacts) from Account where id IN : Trigger.old];
List<List<contact> >conList = new List<List<contact> >();
MAp<id,List<contact> > mapaccidToCon = new MAp<id,List<contact> > ();
for(account acc:accList){

conList.add(acc.contacts);
mapaccidToCon.put(acc.id,acc.contacts);

}

for(account acc:trigger.old){
if(mapaccidToCon.containskey(acc.id)){
acc.addError('you cannot delete the account:'+acc.id);
}

}

}
*/
}