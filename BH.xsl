<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0" >

<xsl:template match="/">


<data>
    <application>    
        <ApplicationID>
            <xsl:value-of select="data/application/application_id"/> 
        </ApplicationID>
        <Customer>
            <xsl:value-of select="data/application/customer_id"/>
        </Customer>
        <FirstName>
            <xsl:value-of select="data/application/name_first"/>
        </FirstName>
        <MiddleName>
            <xsl:value-of select="data/application/name_middle"/>
        </MiddleName>
        <LastName>
            <xsl:value-of select="data/application/name_last"/>
        </LastName>
        <Testing>
            <xsl:if test="/data/application/name_middle = 'LUCKY'">
                <name_middle>LUCKY</name_middle>
            </xsl:if>
        </Testing>
        <xsl:choose> 
            <xsl:when test="1=1">a</xsl:when>
            <xsl:when test="2=2">b</xsl:when>
            <xsl:otherwise>c</xsl:otherwise>
        </xsl:choose>

    </application>    
</data>


</xsl:template>
</xsl:stylesheet>