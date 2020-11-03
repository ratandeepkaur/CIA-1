<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
<body>
<center>
<h1>Employee Management System</h1>
<table border="4">
<tr>
<th>Employee Id</th>
<th>Employee Name</th>
<th>Employee Age</th>
<th>Employee Salary</th>
<th>Employee Email</th>
<th>Employee Mobile No</th>
<th>Employee Designation</th>
<th>Employee Promotion</th>
</tr>
<xsl:for-each select="globalEmployee/Employee">
<tr>
<td><xsl:value-of select="@fid"/></td>
<td><xsl:value-of select="name"/></td>
<td><xsl:value-of select="age"/></td>
<td><xsl:value-of select="salary"/></td>
<td><xsl:value-of select="email"/></td>
<td><xsl:value-of select="phone"/></td>
<td><xsl:value-of select="designation"/></td>
<xsl:if test="age &gt;= 50">
<td>  Associate Project Manager </td>
</xsl:if>
<xsl:if test="age &gt;=40 and age &lt;=49">
<td>  Team Leader </td>
</xsl:if>
<xsl:if "age &lt;=40">
<td> Developer </td>
</xsl:if>
</tr>

</xsl:for-each >
</table>
</center>
</body>
</html>
</xsl:template>
</xsl:stylesheet>
