trigger ProvaTest2 on Contact (after update) {
    
    for(Contact con: [Select Name, Phone From Contact where ID in :Trigger.New ]){
        
        if(con.Phone == '3295487356' && con.Phone != Trigger.oldMap.get(con.Id).Phone){
            System.debug('ciao');
        }
    }
    

}