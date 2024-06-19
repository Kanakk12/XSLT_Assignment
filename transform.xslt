<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns="http://www.w3.org/1999/xhtml">
    <xsl:output method="html" encoding="UTF-8" indent="yes"/>
    
    <xsl:template match="/">
        <html>
        <head>
            <link rel="stylesheet" type="text/css" href="styles.css"/>
        </head>
        <body>
            <table>
                <thead>
                <tr>
                    <th>Employee Name</th>
                    <th>Designation</th>
                    <th>Date of Joining</th>
                </tr>
                </thead>
                <tbody>
                <!-- Filter for Technical Writer with Salary between 5LPA and 7LPA -->
                <xsl:for-each select="/employees/employee[designation='Technical Writer' and salary > 500000 and salary < 700000]">
                    <tr>
                        <td><xsl:value-of select="name"/></td>
                        <td><xsl:value-of select="designation"/></td>
                        <td><xsl:value-of select="dateOfJoining"/></td>
                    </tr>
                </xsl:for-each>
                <!-- Debug message to see if no employees match -->
                <xsl:if test="not(/employees/employee[designation='Technical Writer' and salary > 500000 and salary < 700000])">
                    <tr>
                        <td colspan="3">No matching employees found</td>
                    </tr>
                </xsl:if>
                </tbody>
            </table>
        </body>
        </html>
    </xsl:template>
</xsl:stylesheet>






