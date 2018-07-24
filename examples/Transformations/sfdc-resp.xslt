<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output omit-xml-declaration="yes" indent="yes"/>
    <xsl:strip-space elements="*"/>
    <xsl:template match="/">
		<SFDCResponse>
		<HEADER>
		<OptyNumber></OptyNumber>
		<TARGET_SYSTEMS></TARGET_SYSTEMS>
		<DateTime></DateTime>
		<TrackingID></TrackingID>
		<ID></ID>
		</HEADER>
		<STATUS></STATUS>
		<ERROR_CODE></ERROR_CODE>
		<ERROR_MESSAGE></ERROR_MESSAGE>
		</SFDCResponse>
    </xsl:template>	
</xsl:stylesheet>