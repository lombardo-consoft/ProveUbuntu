@isTest
private class TestAccountDeletion {

    @isTest static void TestDeleteAccountWithOneOpportunity() {
        Account a = new Account(Name='Luigi Rossi');
        insert a;
       
    Opportunity b = new Opportunity( Name='OppRossi', StageName= 'Closed Won',  AccountID = a.ID, CloseDate = System.today() + 90);            
        insert b;
   
    Test.startTest();
    Database.DeleteResult result = Database.delete(a, false);        
    Test.stopTest();       
       
    System.assertEquals('Cannot delete account with related opportunities.', result.getErrors()[0].getMessage());

    }
   
}