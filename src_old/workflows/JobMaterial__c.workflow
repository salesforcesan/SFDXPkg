<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <fieldUpdates>
        <fullName>Set_Job_Material_UniqueKey</fullName>
        <field>UniqueKey__c</field>
        <formula>CASESAFEID(Job__c) + &apos;-&apos; + CASESAFEID(Material__c)</formula>
        <name>Set Job Material UniqueKey</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>Set Job Material UniqueKey</fullName>
        <actions>
            <name>Set_Job_Material_UniqueKey</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>JobMaterial__c.Name</field>
            <operation>notEqual</operation>
            <value>null</value>
        </criteriaItems>
        <triggerType>onAllChanges</triggerType>
    </rules>
</Workflow>
