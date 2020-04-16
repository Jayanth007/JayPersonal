public class CreatingAccount
{
 public Account CreateAccount(String name)
 {
 Account acc = new Account();
 contact c = new contact();
 
 acc.Name=name;
 return acc;
 }
 }