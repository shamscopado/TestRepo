trigger AccountTrigger on Account (after insert) {
   
    if (trigger.isAfter) {
        if (trigger.isinsert) {
            AccountTriggerHandler.createContact(trigger.new);
        }
    }
}