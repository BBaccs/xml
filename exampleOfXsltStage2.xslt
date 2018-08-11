<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:fn="http://www.w3.org/2005/02/xpath-functions"
                xmlns:exslt="http://exslt.org/common"
                xmlns:func="http://exslt.org/functions"
                xmlns:str="http://exslt.org/strings"
                xmlns:date="http://exslt.org/dates-and-times"
                xmlns:olp="http://olp.edataserver.com"
                xmlns:php="http://php.net/xsl"
                xmlns:dyn="http://exslt.org/dynamic"
                exclude-result-prefixes="olp func exslt fn php"
                extension-element-prefixes="exslt func str date dyn">

    <xsl:import href="@@path@@/xml/olp.misc.func.xml" />
    <xsl:import href="@@path@@/xml/olp.date.func.xml" />

    <xsl:output method="xml" indent="yes" omit-xml-declaration="yes" />

    <!-- [platform] Platform from which application submitted (can be based on user agent) -->
    <!-- [job_title] Job title -->
    <!-- [bank_phone] Bank Phone -->
    <!-- [bank_months] Lead's number of month with bank account -->

    <xsl:template match="/">
        <data>
            <channelId>1101</channelId>
            <authKey>1234</authKey>
            <testAlgorithmId>289</testAlgorithmId>
            <testPartners>payday_us_stub</testPartners>
            <userAgent><xsl:value-of select="data/application/client_user_agent" /></userAgent>
            <userIp><xsl:value-of select="data/application/client_ip_address" /></userIp>
            <platform><xsl:value-of select="data/constant/platform"/></platform>
            <domain><xsl:value-of select="data/application/site_name" /></domain>
            <firstName><xsl:value-of select="data/application/name_first" /></firstName>
            <lastName><xsl:value-of select="data/application/name_last" /></lastName>
            <email><xsl:value-of select="data/application/email_primary" /></email>
            <homePhone><xsl:value-of select="data/application/phone_home" /></homePhone>
            <birthDate><xsl:value-of select="olp:format-date('dd.mm.yy', data/application/date_of_birth)" /></birthDate>
            <ssn><xsl:value-of select="data/application/social_security_number" /></ssn>
            <driverLicenseState><xsl:value-of select="data/application/state_issued_id" /></driverLicenseState>
            <driverLicenseNumber><xsl:value-of select="data/application/state_id_number" /></driverLicenseNumber>
            <zip><xsl:value-of select="data/application/home_zip" /></zip>
            <state><xsl:value-of select="data/application/home_state" /></state>
            <city><xsl:value-of select="data/application/home_city" /></city>
            <address><xsl:value-of select="data/application/home_street" /></address>
            <addressLengthMonths><xsl:value-of select="data/application/residence_length_months" /></addressLengthMonths>
            <ownHome>
                <xsl:choose>
                    <xsl:when test="data/application/residence_type = 'OWN'">TRUE</xsl:when>
                    <xsl:otherwise>FALSE</xsl:otherwise>
                </xsl:choose>
            </ownHome>
            <incomeType>
                <xsl:choose>
                    <xsl:when test="data/application/income_type = 'EMPLOYMENT'">EMPLOYMENT</xsl:when>
                    <xsl:otherwise>BENEFITS</xsl:otherwise>
                </xsl:choose>
            </incomeType>
            <employer><xsl:value-of select="data/application/employer_name" /></employer>
            <jobTitle><xsl:value-of select="data/constant/job_title" /></jobTitle>
            <workPhone><xsl:value-of select="data/application/phone_work" /></workPhone>
            <activeMilitary><xsl:value-of select="data/application/military" /></activeMilitary>
            <employedMonths><xsl:value-of select="data/application/employer_length_months" /></employedMonths>
            <payFrequency>
                <xsl:choose>
                    <xsl:when test="data/application/income_frequency = 'WEEKLY'">WEEKLY</xsl:when>
                    <xsl:when test="data/application/income_frequency = 'BI_WEEKLY'">BIWEEKLY</xsl:when>
                    <xsl:when test="data/application/income_frequency = 'TWICE_MONTHLY'">TWICEMONTHLY</xsl:when>
                    <xsl:otherwise>MONTHLY</xsl:otherwise>
                </xsl:choose>
            </payFrequency>
            <payDate1><xsl:value-of select="olp:format-date('dd.mm.yy', data/application/next_pay_date)" /></payDate1>
            <payDate2><xsl:value-of select="olp:format-date('dd.mm.yy', data/application/paydate2)" /></payDate2>
            <monthlyIncome><xsl:value-of select="data/application/income_monthly_net" /></monthlyIncome>
            <directDeposit>
                <xsl:choose>
                    <xsl:when test="data/application/income_direct_deposit = 'TRUE'">true</xsl:when>
                    <xsl:otherwise>false</xsl:otherwise>
                </xsl:choose>
            </directDeposit>
            <bankAba><xsl:value-of select="data/application/bank_aba" /></bankAba>
            <bankName><xsl:value-of select="data/application/bank_name" /></bankName>
            <bankPhone><xsl:value-of select="data/constant/bank_phone" /></bankPhone>
            <bankAccountType>
                <xsl:choose>
                    <xsl:when test="data/application/bank_account_type = 'CHECKING'">CHECKING</xsl:when>
                    <xsl:otherwise>SAVING</xsl:otherwise>
                </xsl:choose>
            </bankAccountType>
            <bankAccountNumber><xsl:value-of select="data/application/bank_account" /></bankAccountNumber>
            <bankAccountLengthMonths><xsl:value-of select="data/constant/bank_months" /></bankAccountLengthMonths>
            <bestTimeToCall><xsl:value-of select="data/application/best_call_time"/></bestTimeToCall>
            <requestedAmount><xsl:value-of select="data/application/loan_amount_desired" /></requestedAmount>
        </data>
    </xsl:template>
</xsl:stylesheet>