public class BusinessSchool extends TrainingProvider{
    public override void Salesforce(){
        Corso__c SFCorso = new Corso__c(Nome_Corso__c='Salesforce',Numero_Giornata__c=300, Prezzo__c=5000);
        system.debug(SFCorso);
    }
    public override void PHP(){
        Corso__c PHPCorso = new Corso__c(Nome_Corso__c='PHP',Numero_Giornata__c=150, Prezzo__c=3000);
        system.debug(PHPCorso);
    }
    public override void iOS(){
        Corso__c iOSCorso = new Corso__c(Nome_Corso__c='iOS',Numero_Giornata__c=200, Prezzo__c=2500);
        system.debug(iOSCorso);
    }
    public override void Java(){
        Corso__c JCorso = new Corso__c(Nome_Corso__c='Java',Numero_Giornata__c=30, Prezzo__c=500);
        system.debug(JCorso);
    }
    public override void Android(){
        Corso__c ADCorso = new Corso__c(Nome_Corso__c='Android',Numero_Giornata__c=300, Prezzo__c=6000);
        system.debug(ADCorso);
    }
    public override void database(){
        Corso__c DATACorso = new Corso__c(Nome_Corso__c='database',Numero_Giornata__c=150, Prezzo__c=4000);
        system.debug(DATACorso);
    }
    
}