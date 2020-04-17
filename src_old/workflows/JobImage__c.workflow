<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <fieldUpdates>
        <fullName>GenerateThumbnail</fullName>
        <field>ImageThumbnailURL__c</field>
        <formula>&apos;https://res.cloudinary.com/&apos;+  $Setup.SurveyPhotoViewerSetting__c.CloudinaryKey__c  +&apos;/image/fetch/w_200,h_200,c_fill,g_face,r_max,f_auto/&apos;  &amp;  ImageURL__c</formula>
        <name>Generate Thumbnail</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>Job Image - Generate Thumbnail URL</fullName>
        <actions>
            <name>GenerateThumbnail</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>JobImage__c.ImageURL__c</field>
            <operation>notEqual</operation>
            <value>NULL</value>
        </criteriaItems>
        <triggerType>onAllChanges</triggerType>
    </rules>
</Workflow>
