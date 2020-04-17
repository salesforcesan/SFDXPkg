<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <fieldUpdates>
        <fullName>SetJobAttemptUniqueKey</fullName>
        <field>UniqueKey__c</field>
        <formula>Job__r.Name &amp; &apos;-&apos; &amp; AttemptSequencePadded__c</formula>
        <name>Set Job Attempt Unique Key</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>SetLastModifiedDate</fullName>
        <field>LastModifiedDate__c</field>
        <formula>LastModifiedDate</formula>
        <name>Set Last Modified Date</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>Set Job Attempt Unique Key</fullName>
        <actions>
            <name>SetJobAttemptUniqueKey</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>JobAttempt__c.Name</field>
            <operation>notEqual</operation>
            <value>null</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>SetLastModifiedDate</fullName>
        <actions>
            <name>SetLastModifiedDate</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>JobAttempt__c.Name</field>
            <operation>notEqual</operation>
            <value>null</value>
        </criteriaItems>
        <description>Sets the custom last modified date field to the system&apos;s Last Modified Date so the index on custom field can be used for queries</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
</Workflow>
