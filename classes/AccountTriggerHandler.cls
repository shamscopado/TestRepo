public class AccountTriggerHandler {
    public static void createContact (List<Account> accounts) {
        List<Contact> contacts = new List<Contact>();
// Feature brnach to dev1 merge change2  
// Feature brnach to dev1 merge change2       
        for (Account acc : accounts) {
            if (acc.Name != null) {
                Contact con = new Contact();
                con.LastName = 'Generic - ' + acc.Name;
                con.Phone= Acc.Phone;
                con.AccountId = acc.id;              
                contacts.add(con);
            }
        }
try {
            if (!contacts.isEmpty()) {
                insert contacts;
            }
        } catch (Exception e) {
            System.debug('Error: '+e.getMessage());
        }
    }   
}