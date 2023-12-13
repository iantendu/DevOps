public class AccountCreationClass {
    
    public static void createAccount(String accountName, String industry) {
        Account newAccount = new Account();
        newAccount.Name = accountName;
        newAccount.Industry = industry;
        
        try {
            insert newAccount;
            System.debug('Account created successfully: ' + newAccount.Id);
        } catch (Exception e) {
            System.debug('Error creating account: ' + e.getMessage());
        }
    }
}
