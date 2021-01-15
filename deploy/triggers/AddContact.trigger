trigger AddContact on Candidate__c (after insert) {
    List<Contact> newContacts = new List<Contact>();
    for(Candidate__c c: Trigger.new){
        Contact newContact = new Contact(LastName=c.Last_Name__c,
                                        FirstName=c.First_Name__c, Email=c.Email__c);
        newContacts.add(newContact);

    }
	database.insert(newContacts);
}