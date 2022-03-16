public class AccountTriggerHandler {
    public static void createContact (List<Account> accounts) {
        List<Contact> contacts = new List<Contact>();
        // this is change from dev2 to create merge coflict
        for (Account acc : accounts) {
            if (acc.Name != null) {
                Contact con = new Contact();
                con.LastName = 'Generic - ' + acc.Name;
                con.Phone= Acc.Phone;
                con.AccountId = acc.id;
                
                contacts.add(con);
            }
        }
        // this is one more change from dev2 to create merge conflict
        try {
            if (!contacts.isEmpty()) {
                insert contacts;
            }
        } catch (Exception e) {
            System.debug('Error: '+e.getMessage());
        }
    }   
}