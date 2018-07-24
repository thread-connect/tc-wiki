<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output omit-xml-declaration="yes" indent="yes"/>
    <xsl:strip-space elements="*"/>
    <xsl:template match="/">
	<soapenv:Envelope xmlns:soapenv="http://schemas.xmlsoap.org/soap/envelope/" xmlns:urn="urn:ge.sys:SFDC:OppID">
	 <soapenv:Header/>
	  <soapenv:Body>
             <Opportunity_Number><xsl:value-of select="SFDCRequest/HEADER/OptyNumber"/></Opportunity_Number>
        	<DUNS_Number></DUNS_Number>
        	<Plant_ID></Plant_ID>
                <Site_Name></Site_Name>
                <Train_Unit_ID></Train_Unit_ID>
                <Train_Unit_Name></Train_Unit_Name>
                <Expected_Order_Date></Expected_Order_Date>
                <Tier3_P_and_L></Tier3_P_and_L>
                <Opportunity_Owner_Full_Name></Opportunity_Owner_Full_Name>
                <Stage></Stage>
                <Account_Name></Account_Name>
                <Install_Country></Install_Country>
        	<Opportunity_ID><xsl:value-of select="SFDCRequest/HEADER/ID"/></Opportunity_ID>
   </soapenv:Body>
</soapenv:Envelope>     
    </xsl:template>
</xsl:stylesheet>