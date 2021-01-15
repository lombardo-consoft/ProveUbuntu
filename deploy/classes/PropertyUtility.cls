public class PropertyUtility {
    public static void newListedProperties(){

        list<Property__c> newPropList = [select Name,broker__r.email__c,days_on_market__C from property__c where Date_Listed__c = LAST_N_DAYS:30 ];

        for(Property__c Prop : newPropList)
        {
            string propEmail = 'Property Name: '+Prop.Name+',Broker Email: ' +Prop.Broker__r.email__c ; 
            system.debug(propEmail);
        }

    }

}