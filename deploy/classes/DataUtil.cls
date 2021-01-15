@isTest
private class DataUtil {
    static testmethod void testLoadData() {
        // Load the test accounts from the static resource
        List<sObject> ls = Test.loadData(Account.sObjectType, 'Data');
        // Verify that all 3 test accounts were created
        System.assert(ls.size() == 3);
        
        // Get first test account 
        Account a1 = (Account)ls[2];
        String acctName = a1.Name; 
        System.debug(a1.Name); 
        System.debug(a1.Website);
        // Perform some testing using the test records 
    }
}