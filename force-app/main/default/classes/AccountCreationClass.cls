/**
 * @description       : 
 * @author            : 
 * @group             : 
 * @last modified on  : 12-13-2023
 * @last modified by  : 
**/
public class AccountCreationClass {
    
    public static void createAccount(String accountName, String industry) {
        Account newAccount = new Account();
        newAccount.Name = accountName;
        newAccount.Industry = industry;
        
        try {
            insert newAccount;
            System.debug('Account created successfully2: ' + newAccount.Id);
        } catch (Exception e) {
            System.debug('Error creating account: ' + e.getMessage());
        }
    }
}
