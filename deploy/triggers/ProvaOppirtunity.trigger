trigger ProvaOppirtunity on Opportunity (after insert, after update) {
    List<Opportunity> myList = [Select Id,StageName from Opportunity where ID in: Trigger.new 
                                and StageName = 'Closed Won' ];
    List<Task> NewTask = new List <Task>();
    for(Opportunity a: myList){
        if(trigger.isInsert){
            Task InsertTask =new Task(Priority = 'High',Subject='new Task', Status= 'In Progress',WhatID=a.ID );
            NewTask.add(InsertTask);
        }   
        if(trigger.isUpdate){
            if(a.StageName == 'Closed Won' && a.StageName != trigger.oldMap.get(a.Id).StageName){
                Task updateTask =new Task(Priority = 'High',Subject='Update', Status= 'In Progress',WhatID=a.ID );
            NewTask.add(updateTask);
            }
        }
    }  
    insert NewTask;
}