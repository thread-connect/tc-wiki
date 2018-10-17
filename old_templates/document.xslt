<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output omit-xml-declaration="yes" indent="yes"/>
    <xsl:strip-space elements="*"/>
      <xsl:template match="/">
    <BAPIVALUES>
    <BAPI>
    	<Name>ZBAPI_GET_DOCUMENTS</Name>
    	<Values>
        <Value>
          <xsl:value-of select="root/request/criteria/startDate"/>
        </Value>
    		<Value>
          <xsl:value-of select="root/request/criteria/endDate"/>
        </Value>


    		<Table NAME="T_STATUS">
            <xsl:for-each select="root/request/criteria/externalStatus">
          <Data>
          	<Value>
              <xsl:value-of select="."/>
            </Value>
    			</Data>
            </xsl:for-each>
    				</Table>

            <Table NAME="T_DOCTYPE">
                <xsl:for-each select="root/request/criteria/documentType">
              <Data>
              	<Value>
                  <xsl:value-of select="."/>
                </Value>
        			</Data>
                </xsl:for-each>
        				</Table>
    	</Values>
    </BAPI>
    </BAPIVALUES>
    </xsl:template>
</xsl:stylesheet>
