trigger AccountPETrigger on One_Account__e (after insert) {

    
    for (One_Account__e acc : trigger.new){
        Account accs = new Account();
        accs.Name = acc.Again_name__c;
        insert accs;
        system.debug('--accs--');
    }
}