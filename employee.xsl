<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
<body>
<h1>Library Manangement System</h1>
<table border="1">
<tr>
<th>Issuer Name</th>
<th>Book Title</th>
<th>Check Out Date</th>
<th>Due Date</th>
<th>Check In Date</th>
<th>No of Days</th>
<th>Outstanding Days</th>
<th>Extra</th>
<th>Charges</th>
<th>Status</th>
</tr>
<xsl:for-each select="Library/Issuer-Details">
<tr>
<td><xsl:value-of select="issuer_name"/></td>
<td><xsl:value-of select="book_title"/></td>
<td><xsl:value-of select="check_out_date"/></td>
<td><xsl:value-of select="due_date"/></td>
<td><xsl:value-of select="check_in_date"/></td>
<td><xsl:value-of select="no_of_days"/></td>
<td><xsl:value-of select="outstanding_days"/></td>
<td><xsl:value-of select="extra"/></td>
<td><xsl:value-of select="charges"/></td>
<td><xsl:value-of select="status"/></td>
</tr>
</xsl:for-each >
</table>
</body>
</html>
</xsl:template>
</xsl:stylesheet>
