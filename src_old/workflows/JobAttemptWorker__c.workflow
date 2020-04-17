<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>EmailSupervisorifWorkerAssignmentisCancelled</fullName>
        <description>Email Supervisor if Worker Assignment is Cancelled</description>
        <protected>false</protected>
        <recipients>
            <field>SupervisorEmail__c</field>
            <type>email</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>OneHubEmailTemplates/CancelledWorkerEmailTemplate</template>
    </alerts>
    <alerts>
        <fullName>NoShowEmail</fullName>
        <description>No Show Email</description>
        <protected>false</protected>
        <recipients>
            <field>SupervisorEmail__c</field>
            <type>email</type>
        </recipients>
        <senderType>DefaultWorkflowUser</senderType>
        <template>OneHubEmailTemplates/NoShowEmailTemplate</template>
    </alerts>
    <alerts>
        <fullName>Sendemailtoworkeratcloseof_shift_to_summarize_days_work</fullName>
        <description>Send email to worker at close of shift to summarize days work</description>
        <protected>false</protected>
        <recipients>
            <field>ContactEmail__c</field>
            <type>email</type>
        </recipients>
        <senderType>DefaultWorkflowUser</senderType>
        <template>OneHubEmailTemplates/WorkSummary</template>
    </alerts>
    <fieldUpdates>
        <fullName>SetJobAttemptWorkerUniqueKey</fullName>
        <field>UniqueKey__c</field>
        <formula>Name</formula>
        <name>Set Job Attempt Worker Unique Key</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Set_Last_Modified_Date</fullName>
        <field>LastModifiedDate__c</field>
        <formula>LastModifiedDate</formula>
        <name>Set Last Modified Date</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>Email Job Attempt Worker Summary</fullName>
        <actions>
            <name>Sendemailtoworkeratcloseof_shift_to_summarize_days_work</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <formula>AND(ISCHANGED(Status__c), UPPER(TEXT(Status__c)) == &apos;CHECKED OUT&apos;)</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Email Supervisor if NoShow</fullName>
        <actions>
            <name>NoShowEmail</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <formula>AND(ISCHANGED(Status__c), UPPER(TEXT(Status__c)) == &apos;NO SHOW&apos;)</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Email Supervisor if Worker Assignment Cancelled</fullName>
        <actions>
            <name>EmailSupervisorifWorkerAssignmentisCancelled</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <formula>AND(ISCHANGED(Status__c), UPPER(TEXT(Status__c)) == &apos;CANCELED&apos;)</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Set Job Attempt Worker Unique Key</fullName>
        <actions>
            <name>SetJobAttemptWorkerUniqueKey</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>JobAttemptWorker__c.Name</field>
            <operation>notEqual</operation>
            <value>null</value>
        </criteriaItems>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>Set Last Modified Date</fullName>
        <actions>
            <name>Set_Last_Modified_Date</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>JobAttemptWorker__c.Name__c</field>
            <operation>notEqual</operation>
            <value>null</value>
        </criteriaItems>
        <description>Sets the custom last modified date field to the system&apos;s Last Modified Date so the index on custom field can be used for queries</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
</Workflow>
