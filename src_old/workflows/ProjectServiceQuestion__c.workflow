<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <fieldUpdates>
        <fullName>UpdatePSQUniqueKey</fullName>
        <field>UniqueKey__c</field>
        <formula>(CASESAFEID(ProjectService__c) &amp; &quot;-&quot; &amp; CASESAFEID(Question__c))</formula>
        <name>Update PSQ Unique Key</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_DR_Last_Modified_Date_HT</fullName>
        <field>DefinedResponseLastModifiedDateForHT__c</field>
        <formula>DefinedResponseLastModifiedDate__c</formula>
        <name>Update Defined Res Last Modified Date HT</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <rules>
        <fullName>CopyDefinedResponseLastModifiedDatetoHTField</fullName>
        <actions>
            <name>Update_DR_Last_Modified_Date_HT</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>ISCHANGED(DefinedResponseLastModifiedDate__c) &amp;&amp; (UPPER(TEXT(ProjectService__r.Project__r.Status__c)) == &apos;BOOKED&apos; || UPPER(TEXT(ProjectService__r.Project__r.Status__c)) == &apos;LAUNCHED&apos; || UPPER(TEXT(ProjectService__r.Project__r.Status__c)) == &apos;IN PROGRESS&apos; )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Project Service Question - Prevent Duplicates</fullName>
        <actions>
            <name>UpdatePSQUniqueKey</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>ProjectServiceQuestion__c.Name</field>
            <operation>notEqual</operation>
            <value>null</value>
        </criteriaItems>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Service Question - Prevent Duplicates</fullName>
        <active>false</active>
        <criteriaItems>
            <field>ProjectServiceQuestion__c.Name</field>
            <operation>notEqual</operation>
            <value>null</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
</Workflow>
