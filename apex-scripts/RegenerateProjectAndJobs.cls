TriggerUtil.skipProjectDeleteTrigger = true;
delete [SELECT Id FROM Project__c];
TriggerUtil.skipProjectDeleteTrigger = false;

DevUtil.createTestProjectData();
DevUtil.regenerateTestJobs([SELECT Id FROM Project__c LIMIT 1].Id, 200);