<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html" indent="yes"/>

  <xsl:template match="/">
    <html>
      <head>
        <title>Students Table</title>
        <style>
          table { border-collapse: collapse; width: 60%; margin: 20px auto; }
          th, td { border: 1px solid #000; padding: 8px; text-align: left; }
          h2 { text-align: center; }
        </style>
      </head>
      <body>
        <h2>Student Details</h2>
        <table>
          <tr>
            <th>Name</th>
            <th>Age</th>
            <th>Course</th>
          </tr>
          <xsl:for-each select="students/student">
            <tr>
              <td><xsl:value-of select="name"/></td>
              <td><xsl:value-of select="age"/></td>
              <td><xsl:value-of select="course"/></td>
            </tr>
          </xsl:for-each>
        </table>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
