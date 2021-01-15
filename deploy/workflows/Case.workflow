<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>Email_di_notifica_mega_cliente</fullName>
        <ccEmails>francesco.lombardo.192@gmail.com</ccEmails>
        <description>Email di notifica mega cliente</description>
        <protected>false</protected>
        <recipients>
            <recipient>m.willson@test.vh</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Marketing/General</template>
    </alerts>
    <rules>
        <fullName>Case mega cliente</fullName>
        <actions>
            <name>Email_di_notifica_mega_cliente</name>
            <type>Alert</type>
        </actions>
        <active>false</active>
        <booleanFilter>1 OR 2</booleanFilter>
        <criteriaItems>
            <field>Account.AnnualRevenue</field>
            <operation>greaterThan</operation>
            <value>&quot;EUR 20,000,000&quot;</value>
        </criteriaItems>
        <criteriaItems>
            <field>Account.NumberOfEmployees</field>
            <operation>greaterThan</operation>
            <value>5000</value>
        </criteriaItems>
        <description>Modifica per Matt Wilson per i clienti importanti</description>
        <triggerType>onCreateOnly</triggerType>
    </rules>
</Workflow>
