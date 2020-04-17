<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <fieldUpdates>
        <fullName>Set_Project_Service_UniqueKey</fullName>
        <field>UniqueKey__c</field>
        <formula>Name</formula>
        <name>Set Project Service UniqueKey</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>UpdateAttachmentLastModifiedDateHT</fullName>
        <field>AttachmentLastModifiedDateforHT__c</field>
        <formula>AttachmentLastModifiedDate__c</formula>
        <name>Update Attachment Last Modified Date HT</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>UpdateAttributeLastModifiedDateHT</fullName>
        <field>AttributeLastModifiedDateforHT__c</field>
        <formula>AttributeLastModifiedDate__c</formula>
        <name>Update Attribute Last Modified Date HT</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>UpdateCertificationLastModifiedDateHT</fullName>
        <field>CertificationLastModifiedDateforHT__c</field>
        <formula>NOW()</formula>
        <name>Update Certification LastModifiedDate HT</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>UpdateEquipmentLastModifiedDateHT</fullName>
        <field>EquipmentLastModifiedDateforHT__c</field>
        <formula>NOW()</formula>
        <name>Update Equipment LastModifiedDate HT</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>UpdateMaterialLastModifiedDateHT</fullName>
        <field>MaterialLastModifiedDateforHT__c</field>
        <formula>NOW()</formula>
        <name>Update Material LastModifiedDate HT</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>UpdateProjectIsPendingChangesToTrue</fullName>
        <field>IsPendingChanges__c</field>
        <literalValue>1</literalValue>
        <name>Update Project IsPendingChanges to true</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <targetObject>Project__c</targetObject>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>UpdateQuestionLastModifiedDateHT</fullName>
        <field>QuestionLastModifiedDateforHT__c</field>
        <formula>NOW()</formula>
        <name>Update Question LastModifiedDate HT</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>UpdateTargetLastModifiedDateHT</fullName>
        <field>TargetLastModifiedDateforHT__c</field>
        <formula>NOW()</formula>
        <name>Update Target LastModifiedDate HT</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>CopyAttachmentLastModifiedDatetoHTField</fullName>
        <actions>
            <name>UpdateAttachmentLastModifiedDateHT</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>UpdateProjectIsPendingChangesToTrue</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>ISCHANGED(AttachmentLastModifiedDate__c) &amp;&amp; (UPPER(TEXT(Project__r.Status__c)) == &apos;BOOKED&apos; || UPPER(TEXT(Project__r.Status__c)) == &apos;LAUNCHED&apos; || UPPER(TEXT(Project__r.Status__c)) == &apos;IN PROGRESS&apos; )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>CopyAttributeLastModifiedDatetoHTField</fullName>
        <actions>
            <name>UpdateAttributeLastModifiedDateHT</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>UpdateProjectIsPendingChangesToTrue</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>ISCHANGED(AttributeLastModifiedDate__c) &amp;&amp; (UPPER(TEXT(Project__r.Status__c)) == &apos;BOOKED&apos; || UPPER(TEXT(Project__r.Status__c)) == &apos;LAUNCHED&apos; || UPPER(TEXT(Project__r.Status__c)) == &apos;IN PROGRESS&apos; )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>CopyCertificationModifiedDatetoHTField</fullName>
        <actions>
            <name>UpdateCertificationLastModifiedDateHT</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>UpdateProjectIsPendingChangesToTrue</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>(ISCHANGED(CertificationLastModifiedDate__c) || ISCHANGED(NumberofCertifications__c))&amp;&amp; (UPPER(TEXT(Project__r.Status__c)) == &apos;BOOKED&apos; || UPPER(TEXT(Project__r.Status__c)) == &apos;LAUNCHED&apos; || UPPER(TEXT(Project__r.Status__c)) == &apos;IN PROGRESS&apos; )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>CopyEquipmentModifiedDatetoHTField</fullName>
        <actions>
            <name>UpdateEquipmentLastModifiedDateHT</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>UpdateProjectIsPendingChangesToTrue</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>(ISCHANGED(EquipmentLastModifiedDate__c) || ISCHANGED(NumberOfEquipment__c) ) &amp;&amp;  (UPPER(TEXT(Project__r.Status__c)) == &apos;BOOKED&apos; || UPPER(TEXT(Project__r.Status__c)) == &apos;LAUNCHED&apos; || UPPER(TEXT(Project__r.Status__c)) == &apos;IN PROGRESS&apos; )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>CopyMaterialModifiedDatetoHTField</fullName>
        <actions>
            <name>UpdateMaterialLastModifiedDateHT</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>UpdateProjectIsPendingChangesToTrue</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>(ISCHANGED(MaterialLastModifiedDate__c)|| ISCHANGED(NumberOfMaterials__c)) &amp;&amp; (UPPER(TEXT(Project__r.Status__c)) == &apos;BOOKED&apos; || UPPER(TEXT(Project__r.Status__c)) == &apos;LAUNCHED&apos; || UPPER(TEXT(Project__r.Status__c)) == &apos;IN PROGRESS&apos; )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>CopyQuestionsModifiedDatetoHTField</fullName>
        <actions>
            <name>UpdateProjectIsPendingChangesToTrue</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>UpdateQuestionLastModifiedDateHT</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>AND(OR(ISCHANGED(QuestionLastModifiedDate__c), ISCHANGED(NumberofQuestions__c)),  OR(UPPER(TEXT(Project__r.Status__c)) == &apos;LAUNCHED&apos;, UPPER(TEXT(Project__r.Status__c)) == &apos;IN PROGRESS&apos;))</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>CopyTargetsLastModifiedDatetoHTField</fullName>
        <actions>
            <name>UpdateProjectIsPendingChangesToTrue</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>UpdateTargetLastModifiedDateHT</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>(ISCHANGED(TargetLastModifiedDate__c) || ISCHANGED(NumberOfTargets__c) ) &amp;&amp;  (UPPER(TEXT(Project__r.Status__c)) == &apos;BOOKED&apos; || UPPER(TEXT(Project__r.Status__c)) == &apos;LAUNCHED&apos; || UPPER(TEXT(Project__r.Status__c)) == &apos;IN PROGRESS&apos; )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Set Project Service UniqueKey</fullName>
        <actions>
            <name>Set_Project_Service_UniqueKey</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>ProjectService__c.Name</field>
            <operation>notEqual</operation>
            <value>null</value>
        </criteriaItems>
        <triggerType>onCreateOnly</triggerType>
    </rules>
</Workflow>
