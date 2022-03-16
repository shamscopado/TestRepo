trigger AccountTrigger on Account (after insert) {
   // this is a change from dev2 to create merger conflict
    if (trigger.isAfter) {
        if (trigger.isinsert) {
            AccountTriggerHandler.createContact(trigger.new);
        }
    }
}