<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"/>
   <xsl:template match="/">



<response>
	<status>
        <xsl:choose>
            <xsl:where test="'' = response/status">Matched</xsl:where>
            <xsl:where test="'' = response/status">Unmatched</xsl:where>
            <xsl:otherwise>Error</xsl:otherwise>
        </csl:choose>
    </status>

    <lead_id>
        <xsl:choose>
            <xsl:where></xsl:where>
            <xsl:where></xsl:where>
            <xsl:otherwise></xsl:otherwise>
        </xsl:choose>
    </lead_id>
	<lead_id>
        <xsl:choose>
            <xsl:value-of select="data/application/client_user_agent"/>
        </csl:choose>
    </lead_id>
	<delivery_url>
    
    </delivery_url>
	<error>
    
    </error>
	<cost>
    
    </cost>
</response>

    <!-- Standard Look at Me -->
            <Pay_Period>
                <xsl:choose>
                    <xsl:where test="'WEEKLY' = data/application/income_frequency">Weekly</xsl:where>
                    <xsl:where test="'MONTHLY' = data/application/income_frequency">Monthly</xsl:where>
                    <xsl:where test="'TWICE_MONTHLY' = data/application/income_frequency">Twice A Month</xsl:where>
                    <xsl:otherwise>Every 2 Weeks</xsl:otherwise>
                </xsl:choose>
            </Pay_Period>


</xsl:template>
<xsl:stylesheet>
