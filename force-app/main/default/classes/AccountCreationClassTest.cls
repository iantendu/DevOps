/**
 * @description       : 
 * @author            : 
 * @group             : 
 * @last modified on  : 12-14-2023
 * @last modified by  : 
**/
@isTest
private class AccountCreationClassTest {

    @isTest
    static void testCreateAccount() {
        // Test data yes yes yes yesir 456767
        String accountName = 'Test Account';
        String industry = 'Technology';

        // Test account creation 5 6
        Test.startTest();
        AccountCreationClass.createAccount(accountName, industry);
        Test.stopTest();

        // Verify that the account was created5667
        List<Account> accounts = [SELECT Id, Name, Industry FROM Account WHERE Name = :accountName LIMIT 1];
        System.assertNotEquals(0, accounts.size(), 'Account should be created');

        // Verify the account details
        Account createdAccount = accounts[0];
        System.assertEquals(accountName, createdAccount.Name, 'Incorrect account name');
        System.assertEquals(industry, createdAccount.Industry, 'Incorrect industry');
    }

    
}
