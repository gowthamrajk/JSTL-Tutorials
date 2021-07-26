<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">  
<xsl:param name="doc"/>  
<xsl:template match="/">  
<html>  
<body>  
<h2>Company's Employee detail</h2>  
<table border="2">  
<tr>  
<th align="left">Name  
</th>  
<th align="left">Designation  
</th>  
<th align="left">Age  
</th>  
</tr>  
<xsl:for-each select="organisation/company/emp">  
<tr>  
<td>  
<xsl:value-of select="name"/>  
</td>  
<td>  
<xsl:value-of select="designation"/>  
</td>  
<td>  
<xsl:value-of select="age"/>  
</td>  
</tr>  
</xsl:for-each>  
</table>  
</body>  
</html>  
</xsl:template>  
</xsl:stylesheet> 