trigger AccountDeletion on Account (before delete) {
    //Prevent the deletion of accounts if they have related contacts
    for(Account a:[SELECT ID FROM ACCOUNT WHERE ID IN (SELECT ACCOUNTID FROM OPPORTUNITY) 
                   AND id in :Trigger.old]){
                       Trigger.oldMap.get(a.id).addError
                           ('Non puoi cancellare l\' account perchè ha delle opportunity');
                   }

}