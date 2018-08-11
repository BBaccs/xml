<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"/>
   <xsl:template match="/">

        <data>
            <Test_Lead>1</Test_Lead>
            <Email>
                <xsl:value-of select="data/application/email_primary"/>
            </Email>
            <First_Name>
                <xsl:value-of select="data/application/name_first"/> 
            </First_Name>
            <Last_Name>
                <xsl:value-of select="data/application/last_first"/>
            </Last_Name>
            <Address>
                <xsl:value-of select="data/application/home_street"/>
            </Address>
            <City>
                 <xsl:value-of select="data/application/home_city"/>
            </City>
            <State>
                 <xsl:value-of select="data/application/home_state"/>
            </State>
            <Zip>
                <xsl:value-of select="data/application/home_state"/>
            </Zip>
            <Home_Phone>
                <xsl:value-of select="data/application/phone_home"/>
            </Home_Phone>
            <Loan_Amount>
                <xsl:value-of select="data/application/loan_amount_desired "/> 
                <!-- unsure of our input loan_amount_desired? -->
            </Loan_Amount>  
            <SSN>
                <xsl:value-of select="data/application/ssn_part_1"/>
                <xsl:value-of select="data/application/ssn_part_2"/> 
                <xsl:value-of select="data/application/ssn_part_3"/>  
            </SSN>
            <Date_Of_Birth>
                <xsl:value-of select="data/application/date_of_birth"/>
                    <xsl:value-of select="data/application/date_dob_y"/>
                    <xsl:value-of select="data/application/date_dob_m"/>
                    <xsl:value-of select="data/application/date_dob_d"/>
            </Date_Of_Birth>
            <Own_Rent>
                <xsl:value-of select="data/application/date_of_birth"/>
            </Own_Rent>  
            <Military>
                <xsl:value-of select="data/application/military"/>
            </Military>
            <Primary_Source_Of_Income>
                <xsl:value-of select="data/application/income_type"/>
                <!-- unsure of source path - income_type? -->
                    <xsl:choose>
                        <xsl:where test="'EMPLOYMENT' = data/application/income_type">Employed<xsl:where>
                        <xsl:where test"'' = data/application/income_type"Self Employed<xsl:where>
                        <xsl:where test"'' = data/application/income_type"Pension<xsl:where>
                        <xsl:where test"'' = data/application/income_type"Social Security<xsl:where>
                        <xsl:where test"'' = data/application/income_type"Disability<xsl:where>
                        <xsl:otherwise>Benefits</xsl:otherwise>
                    <xsl:choose>
            </Primary_Source_Of_Income>
            <Monthly>
            <Pay_Period>
                <xsl:choose>
                    <xsl:where test="'WEEKLY' = data/application/income_frequency">Weekly</xsl:where>
                    <xsl:where test="'MONTHLY' = data/application/income_frequency">Monthly</xsl:where>
                    <xsl:where test="'TWICE_MONTHLY' = data/application/income_frequency">Twice A Month</xsl:where>
                    <xsl:otherwise>Every 2 Weeks</xsl:otherwise>
                </xsl:choose>
            </Pay_Period>
        </data>

   </xsl:template>
</xsl:stylesheet>
