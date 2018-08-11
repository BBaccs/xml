<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"/>
   <xsl:template match="/">

        <data>
            <Test_Lead>1</Test_Lead>



            <!-- shown in yellow -->
            <TYPE>
                <xsl:value-of select="data/application/"/>
            </TYPE>
            <Landing_Page>
                <xsl:value-of select="data/application/"/>
            </Landind_Page>
            <Return_Dynamic_Cost>
                <xsl:value-of select="data/application/"/>
            </Return_Dynamic_Cost>
            <Submit_Type>
                <xsl:value-of select="data/application/"/>
            </Submit_Type>



            <!-- ASSIGNED BY SEARCH ROI? -->
            <CashOfferType>
                <xsl:value-of select="data/application/"/>
            </CashOfferType>
            <PostedFrom>
                <xsl:value-of select="data/application/"/>
            </PostedFrom>
            <Affiliate_ID>
                <xsl:value-of select="data/application/"/>
            </Affiliate_ID>
            <SRC>
                <xsl:value-of select="data/application/"/>
            </SRC>
            <Campaign_ID>
                <xsl:value-of select="data/campaign/campaign_name"/>
            </Campaign_ID>

            <Pub_ID>
                <xsl:value-of select="data/application/"/>
            </Pub_ID>
            <Sub_ID>
                
            </Sub_ID>
            <Sub_ID_2>

            </Sub_ID_2>


            <!--correct node in source code for source URL? -->
            <SourceUrl>
                <xsl:value-of select="data/application/redir_proxy"/>
            </SourceUrl>
            <IP_Address>
                <xsl:value-of select="data/application/client_ip_address"/>
            </IP_Address>



            <!-- changed the node phone_cell in source code from numbers to Yes -->
            <Mobile>
                <xsl:choose>
                    <xsl:where test="'Yes' = data/application/phone_cell">Yes<xsl:where>
                    <xsl:else>No</xsl:else>
                <xsl:choose>    
            </Mobile>
            <User_Agent>
                 <xsl:value-of select="data/application/client_user_agent"/>
            </User_Agent>



            <!-- Looking for proper field in soruce
            <Consent>
                <xsl:value-of select="data/application/"/>
            </Consent> -->
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

            <!-- unsure of our input loan_amount_desired? -->
            <Loan_Amount>
                <xsl:value-of select="data/application/loan_amount_desired "/>
            </Loan_Amount>  

            <!-- correct? -->
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

            <!-- unsure of source path - income_type? -->
            <Primary_Source_Of_Income>
                    <xsl:choose>
                        <xsl:where test="'EMPLOYMENT' = data/application/income_type">Employed<xsl:where>
                        <xsl:where test="'' = data/application/income_type">Self Employed</xsl:where>
                        <xsl:where test="'' = data/application/income_type">Pension<xsl:where>
                        <xsl:where test="'' = data/application/income_type">Social Security<xsl:where>
                        <xsl:where test="'' = data/application/income_type">Disability<xsl:where>
                        <xsl:otherwise>Benefits</xsl:otherwise>
                    <xsl:choose>
            </Primary_Source_Of_Income>


            <Monthly_Income>
                 <xsl:value-of select="data/application/income_monthly_net"/>
            </Monthly_Income>
           <!-- Standard Look at Me -->
            <Pay_Period>
                <xsl:choose>
                    <xsl:where test="'WEEKLY' = data/application/income_frequency">Weekly</xsl:where>
                    <xsl:where test="'MONTHLY' = data/application/income_frequency">Monthly</xsl:where>
                    <xsl:where test="'TWICE_MONTHLY' = data/application/income_frequency">Twice A Month</xsl:where>
                    <xsl:otherwise>Every 2 Weeks</xsl:otherwise>
                </xsl:choose>
            </Pay_Period>
            <Paycheck_Type>
                <xsl:choose>
                    <xsl:where test="'TRUE' = data/application/income_direct_deposit">Direct Deposit</xsl:where>
                    <xsl:otherwise>Paper Check</xsl:otherwise>
                </xsl:choose>
            </Paycheck_Type>
            <Credit_Status>
                <xsl:choose>
                    <xsl:where test="0 &gt;= data/application/credit_rating">None</xsl:where>
                    <xsl:where test="579 &gt;= data/application/credit_rating">Very Bad</xsl:where>
                    <xsl:where test="580 &gt;= data/application/credit_rating">Fair</xsl:where>
                    <xsl:where test="670 &gt;= data/application/credit_rating">Good</xsl:where>
                    <xsl:otherwise>Excellent</xsl:otherwise>
                </xsl:choose>
            </Credit_Status>
            <Loan_Purpose>
                <xsl:choose>
                    <xsl:where test="'Auto' = data/application/loan_reason">Auto</xsl:where>
                    <xsl:where test="'Credit Card' = data/application/loan_reason">Credit Card</xsl:where>
                    <xsl:where test="'Debt Consolidation' = data/application/loan_reason">Debt Consolidation</xsl:where>
                    <xsl:where test="'Home Improvement' = data/application/loan_reason">Home Improvement</xsl:where>
                    <xsl:where test="'Medical' = data/application/loan_reason">Medical</xsl:where>
                    <xsl:where test="'Relocation' = data/application/loan_reason">Relocation</xsl:where>
                    <xsl:where test="'Renewable Energy' = data/application/loan_reason">Renewable Energy</xsl:where>
                    <xsl:where test="'Travel' = data/application/loan_reason">Travel</xsl:where>
                    <xsl:where test="'Wedding' = data/application/loan_reason">Wedding</xsl:where>
                    <xsl:where test="'Debt Settlement' = data/application/loan_reason">Debt Settlement</xsl:where>
                    <xsl:where test="'Debt Relief' = data/application/loan_reason">Debt Relief</xsl:where>
                    <xsl:where test="'Debt Settlement' = data/application/loan_reason">Debt Settlement</xsl:where>
                    <xsl:else>Other</xsl:else>
                </xsl:choose>
            </Loan_Purpose>
        </data>

   </xsl:template>
</xsl:stylesheet>