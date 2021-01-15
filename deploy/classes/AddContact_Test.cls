@isTest
public class AddContact_Test {
    static testMethod void positive_TestOneCandidate(){
        Candidate__c cand = new Candidate__c(First_Name__c = 'Test', Last_Name__c='Candidato0');
        database.insert(cand);
        Contact ctct = [SELECT FirstName, LastName
                       FROM Contact
                       WHERE FirstName ='Test' AND LastName='Candidato0'];
        System.assert(ctct.FirstName == cand.First_Name__c);
        System.assert(ctct.LastName == cand.Last_Name__c);
    }

}