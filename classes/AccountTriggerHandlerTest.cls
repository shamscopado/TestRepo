@isTest
public class AccountTriggerHandlerTest {
    
    @isTest
    private static void createContactTest() {
        Test.startTest();
    
        Account acc = new Account();
        acc.Name = 'Test Account ABC';
        acc.Phone = '4444444444';
        
        insert acc;
        
        Test.stopTest();

        Integer conSize = [SELECT Id, Name FROM Contact WHERE AccountId =: acc.Id].size();
        system.assertEquals(conSize, 1);
    }     

}