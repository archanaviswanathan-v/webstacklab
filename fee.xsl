<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <title>Sample</title>
            </head>
            <body>
                <br></br>
                <br></br>
                <br></br>
                <br></br>
                <br></br>
                <table align="center" border-radius="10px" width="1000" cellpadding="5">
                    <tr>
                        <th colspan="6" style="border-style:outset;border-color: #96D4D4;font:30px Comic Sans MS">Student
                            Details</th>
                    </tr>
                    <tr>
                        
                        <th>Student ID</th>
                        <th>Name</th>
                        <th>Age</th>
                        <th>course</th>
                    </tr>
                    <xsl:for-each select="fee/student">
                        <xsl:sort select="id" />
                        <tr align="center">
                            
                            <td>
                                <xsl:value-of select="id" />
                            </td>
                            <td>
                                <xsl:value-of select="name" />
                            </td>
                            <td>
                                <xsl:value-of select="age" />
                            </td>
                            
                            <xsl:choose>
                                <xsl:when test="status=&#39;MCA&#39;">
                                    <td style="background-color:purple;">
                                        <xsl:value-of select="course" />
                                    </td>
                                </xsl:when>
                                <xsl:otherwise>
                                    <td>
                                        <xsl:value-of select="course" />
                                    </td>
                                </xsl:otherwise>
                            </xsl:choose>
                        </tr>
                    </xsl:for-each>
                </table>
                <br></br>
                <br></br>
                <br></br>
                <br></br>
                <br></br>
                <table align="center" border-radius="10px" width="1000" cellpadding="5">
                    <tr>
                        <th colspan="5" style="border-style:outset;border-color: #96D4D4;font:30px Comic Sans MS">Student
                            Details
                            using if condition(age>21)</th>
                    </tr>
                    <tr>
                        
                        <th>Student ID</th>

                        <th>Name</th>
                        <th>Age</th>
                        
                    </tr>
                    <xsl:for-each select="fee/student">
                        <xsl:if test="age > 21">
                            <tr align="center">
                                
                                <td>
                                    <xsl:value-of select="id" />
                                </td>
                                <td>
                                    <xsl:value-of select="name" />
                                </td>
                                <td>
                                    <xsl:value-of select="age" />
                                </td>
                                
                            </tr>
                        </xsl:if>
                    </xsl:for-each>
                </table>
                <br></br>
                <br></br>
                <br></br>
                <br></br>
                <br></br>
                <h4 style="text-align:center;">
                    <xsl:value-of select="writer" />
                    <xsl:value-of select="copyright" />
                </h4>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>