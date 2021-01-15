trigger ProvaTest on Account (after insert, after update) {
    List<case> CaseTest = new List<case>();
    
    for(Account acc : 
        [Select ID, Name from Account where ID in :Trigger.New AND ID not IN (Select Accountid from Case )])
    {
            CaseTest.add(New Case(Status ='New', Origin='Web', AccountID= acc.ID ));
        
    }
    insert CaseTest;
}