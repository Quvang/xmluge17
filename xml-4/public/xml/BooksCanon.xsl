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
	<xsl:template match="/">
		<html>
			<head>
				<title>Books for days!</title>
				<meta charset="utf-8"/>
			</head>
			<body style="background-color: #cccccc;">
				<xsl:apply-templates/>		<!-- here the following rules wil place content -->
			</body>
		</html>
	</xsl:template>


    <xsl:template match="booksCanon/book">
      <section style="background-color: yellow; border: 1px solid white; padding: 5px; width: 50%; margin: 5px auto; color:green;">
      <xsl:apply-templates/>
      </section>
    </xsl:template>

		<xsl:template match="booksCanon/book/title">
			<h1><xsl:apply-templates/></h1>
		</xsl:template>


		<xsl:template match="booksCanon/book/edition">
			<div>Edition: <xsl:apply-templates/></div>
		</xsl:template>


		<xsl:template match="booksCanon/book/authors/author">
			<div>Author: <xsl:apply-templates/></div>
		</xsl:template>


		<xsl:template match="booksCanon/book/publisher">
			<div>Publisher: <xsl:apply-templates/></div>
		</xsl:template>


		<xsl:template match="booksCanon/book/pages">
			<div>Pages: <xsl:apply-templates/></div>
		</xsl:template>


		<xsl:template match="booksCanon/book/isbn">
			<div>ISBN:  <xsl:apply-templates/></div>
		</xsl:template>


		<xsl:template match="booksCanon/book/price">
			<div>Price: <xsl:apply-templates/></div>
		</xsl:template>


		<xsl:template match="booksCanon/book/currency">
			<div>Currency: <xsl:apply-templates/></div>
		</xsl:template>


		<xsl:template match="booksCanon/book/comments">
			<div>Comments:  <xsl:apply-templates/></div>
		</xsl:template>
</xsl:stylesheet>
