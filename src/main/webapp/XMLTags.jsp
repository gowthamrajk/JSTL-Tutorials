<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml" %>  

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>XML Tags</title>
</head>
<body>





<%-- JSTL XML TAGS --%>

<%-- 1) OUT (used for displaying the result of an xml Path expression and writes the result to JSP writer object) --%>
<h2>Vegetable Information:</h2>  
<c:set var="vegetable">  
<vegetables>  
    <vegetable>  
      <name>onion</name>  
      <price>40/kg</price>  
    </vegetable>  
 <vegetable>  
      <name>Potato</name>  
      <price>30/kg</price>  
    </vegetable>  
 <vegetable>  
      <name>Tomato</name>  
      <price>90/kg</price>  
    </vegetable>  
</vegetables>  
</c:set>  
<x:parse xml="${vegetable}" var="output"/>  
<b>Name of the vegetable is</b>:  
<x:out select="$output/vegetables/vegetable[1]/name" /><br>  
<b>Price of the Potato is</b>:  
<x:out select="$output/vegetables/vegetable[2]/price" />  

<%-- 2) PARSE (used for parse the XML data specified either in the tag body or an attribute) --%>
<h2>Books Info:</h2>  
<c:import var="bookInfo" url="novels.xml"/>  
<x:parse xml="${bookInfo}" var="output"/>  
<p>First Book title: <x:out select="$output/books/book[1]/name" /></p>  
<p>First Book price: <x:out select="$output/books/book[1]/price" /></p>  
<p>Second Book title: <x:out select="$output/books/book[2]/name" /></p>  
<p>Second Book price: <x:out select="$output/books/book[2]/price" /></p>  
  
  
<%-- 3) SET (used to set a variable with the value of an XPath expression) --%>
<h3>Books Information:</h3>  
<c:set var="book">  
<books>  
<book>  
  <name>Three mistakes of my life</name>  
  <author>Chetan Bhagat</author>  
  <price>200</price>  
</book>  
<book>  
  <name>Tomorrow land</name>  
  <author>Brad Bird</author>  
  <price>2000</price>  
</book>  
</books>  
</c:set>  
<x:parse xml="${book}" var="output"/>  
<x:set var="fragment" select="$output/books/book[2]/price"/>  
<b>The price of the Tomorrow land book</b>:  
<x:out select="$fragment" />  


<%-- 4) CHOOSE (conditional tag that establish a context for mutually exclusive conditional operations) --%>
<%-- 5) WHEN (subtag of <x:choose> that will include its body if the condition evaluated be 'true') --%>
<%-- 6) OTHERWISE (subtag of <x:choose> it follows <x:when> tags and runs only if all the prior condition evaluated is 'false') --%>
<h3>Books Information:</h3>  
<c:set var="xmltext">  
<books>  
<book>  
  <name>Three mistakes of my life</name>  
  <author>Chetan Bhagat</author>  
  <price>200</price>  
</book>  
<book>  
  <name>Tomorrow land</name>  
  <author>Brad Bird</author>  
  <price>2000</price>  
</book>  
</books>  
</c:set>  
  
<x:parse xml="${xmltext}" var="output"/>  
<x:choose>  
   <x:when select="$output//book/author = 'Chetan bhagat'">  
      Book is written by Chetan bhagat  
   </x:when>  
   <x:when select="$output//book/author = 'Brad Bird'">  
      Book is written by Brad Bird  
   </x:when>  
   <x:otherwise>  
      The author is unknown...  
   </x:otherwise>  
</x:choose>  


<%-- 7) IF (used for evaluating the test XPath expression) --%>
<h2>Vegetable Information:</h2>  
<c:set var="vegetables">  
<vegetables>  
    <vegetable>  
      <name>onion</name>  
      <price>40</price>  
    </vegetable>  
 <vegetable>  
      <name>Potato</name>  
      <price>30</price>  
    </vegetable>  
 <vegetable>  
      <name>Tomato</name>  
      <price>90</price>  
    </vegetable>  
</vegetables>  
</c:set>  
<x:parse xml="${vegetables}" var="output"/>  
<x:if select="$output/vegetables/vegetable/price < 100">  
   Vegetables prices are very low.  
</x:if>  


<%-- 8) TRANSFORM (used in a XML document for providing the XSL (Extensible Stylesheet Language) transformation) --%>
<c:import var="xml" url="transfer.xml" />  
<c:import var="xsl" url="transfer.xsl" />  
<x:transform xml="${xml}" xslt="${xsl}" />  

<%-- 9) PARAM (used to set the parameter in the XSLT style sheet. It use along with the transform tag for sending parameter along with the value) --%>
<h3>Novels Information:</h3>  
<c:set var="xmltext">  
 <books>  
<book>  
  <name>Three mistakes of my life</name>  
  <author>Chetan Bhagat</author>  
  <price>200</price>  
</book>  
<book>  
  <name>Tomorrow land</name>  
  <author>Brad Bird</author>  
  <price>1000</price>  
</book>  
<book>  
  <name>Wings of fire</name>  
  <author>Dr. APJ Abdul Kalam</author>  
  <price>500</price>  
</book>  
</books>  
</c:set>  
  
<c:import url="transfer.xsl" var="xslt"/>  
<x:transform xml="${xmltext}" xslt="${xslt}">  
   <x:param name="bgColor" value="yellow"/>  
</x:transform>  






</body>
</html>