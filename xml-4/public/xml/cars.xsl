<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns="http://www.w3.org/1999/xhtml">

	<xsl:output method="xml"
				      indent="yes"
				      omit-xml-declaration="no"
	            doctype-system="about:legacy-compat"/>

	<!-- The following rule matches the root element,
		 irrespective of name,
	     and creates an html outline with an apply templates somewhere
	-->
  <xsl:template match="cars">
      <html>
        <head>
          <title>Second Hand Dåser</title>
				  <meta charset="utf-8"/>
          <style>
            body {
              background-color: #cccccc;
              color:#ffffff;
            }

            h1 {
              background-color:yellow;
              color:green;
              width: 50%;
              margin: 5px auto;
            }

            table {
              background-color:yellow;
              width: 50%;
              margin: 5px auto;
              border: 1px solid white;
            }

            td, th {
              padding: 5px;
              border: 1px solid white;
              text-align: center;
              color:green;
            }

          </style>
        </head>
          <body>
              <h1>Second Hands Dåser</h1>
				<table>
					<tr>
						<th>Maker</th>
						<th>Model</th>
						<th>Year</th>
						<th>KMs</th>
						<th>Color</th>
						<th>Price</th>
						<th>Warranty</th>
					</tr>
					<xsl:for-each select="car">
					<xsl:sort select="@manufacturer"/>
						<tr>
							<td><xsl:value-of select="@manufacturer"/></td>
							<td><xsl:value-of select="@model"/></td>
							<td><xsl:value-of select="@year"/></td>
							<td><xsl:value-of select="meter"/></td>
							<td bgcolor="{color}"><xsl:value-of select="color" /></td>
							<td><xsl:value-of select="price"/></td>
							<td><xsl:value-of select="dealersecurity"/></td>
						</tr>
					</xsl:for-each>
				</table>
          </body>
      </html>
    </xsl:template>
  </xsl:stylesheet>
