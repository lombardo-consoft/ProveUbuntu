public class TestMaster {
    public void mainFunction(){
        try
        {
            insertMaster();
        } catch (MasterException me) {
            System.debug('Message: ' + me.getMessage());
            System.debug('Cause: ' + me.getCause());
            System.debug('Line Number: ' + me.getLineNumber());
            System.debug('Stack Trace: ' + me.getStackTraceString());
            
        }
    }
    public void insertMaster(){
        try{
            //insert Master senza required field come tipologia
            Master__c prova = new Master__c();
            insert prova;
        }
        catch(DmlException e){
            throw new MasterException('Master cannot be inserted', e);
                }
    }
    
}