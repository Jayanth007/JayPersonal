@isTest
public class TestVerifyDate {
//Need to write test cases to cover 100% coverage
////2016-10-26 00:00:00
 @isTest static void testCheckDatesWithIn30Days()
 {
     date d1 = date.parse('12/20/2009');
     date d2=date.parse('12/27/2009');
    Date d = VerifyDate.CheckDates(d1,d2);
     System.assertEquals(d, d2);
 }
    @isTest static void testCheckDatesWithmorethan30Days()
 {
     date d1 = date.parse('10/20/2009');
     date d2=date.parse('12/27/2009');
    Date d = VerifyDate.CheckDates(d1,d2);
     System.assertNotEquals(d, d2);
 }
}