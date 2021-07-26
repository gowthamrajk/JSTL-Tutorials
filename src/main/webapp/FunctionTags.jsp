<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Function Tags</title>
</head>
<body>




<%-- JSTL FUNCTION TAGS --%>

<%-- 1) CONTAINS (used for testing if the string containing the specified substring) --%>
<c:set var="String" value="Welcome to Gowthamraj's JSTL Tutorials"/>  
<c:if test="${fn:contains(String, 'Gowthamraj')}">  
   <p>Found Gowthamraj string<p>  
</c:if>  
<c:if test="${fn:contains(String, 'JSTL')}">  
   <p>Found JSTL string<p>  
</c:if>  


<%-- 2) CONTAINS IGNORE CASE (used to test if an input string contains the specified substring as a case insensitive way) --%>
<c:set var="String" value="Welcome to Gowthamraj's JSTL Tutorials"/>  
<c:if test="${fn:containsIgnoreCase(String, 'Gowthamraj')}">  
   <p>Found Gowthamraj string<p>  
</c:if>  
<c:if test="${fn:containsIgnoreCase(String, 'JSTL')}">  
   <p>Found JSTL string<p>  
</c:if>  
  
<%-- 3) ENDS WITH (used for testing if an input string ends with the specified suffix) --%>

<c:set var="String" value="Welcome to Gowthamraj's JSTL programming Tutorials"/>  
<c:if test="${fn:endsWith(String, 'programming')}">  
   <p>String ends with programming<p>  
</c:if>  
<c:if test="${fn:endsWith(String, 'JSTL')}">  
   <p>String ends with JSTL<p>  
</c:if> 

<%-- 4) ESCAPEXML() (escapes the characters that would be interpreted as XML markup) --%>
<c:set var="string1" value="It is first String."/>  
<c:set var="string2" value="It is <xyz>second String.</xyz>"/>  
<p>With escapeXml() Function:</p>  
<p>string-1 : ${fn:escapeXml(string1)}</p>  
<p>string-2 : ${fn:escapeXml(string2)}</p>  
<p>Without escapeXml() Function:</p>  
<p>string-1 : ${string1}</p>  
<p>string-2 : ${string2}</p>  


<%-- 5) INDEXOF() (return an index of string) --%>
<c:set var="string1" value="It is first String."/>  
<c:set var="string2" value="It is <xyz>second String.</xyz>"/>  
<p>Index-1 : ${fn:indexOf(string1, "first")}</p>  
<p>Index-2 : ${fn:indexOf(string2, "second")}</p>  

<%-- 6) TRIM() (removes the blank spaces from both the ends of a string) --%>
<c:set var="str1" value="Welcome to JSTL        programming         Tutorials    "/>  
<p>String-1 Length is : ${fn:length(str1)}</p>  
<c:set var="str2" value="${fn:trim(str1)}" />  
<p>String-2 Length is : ${fn:length(str2)}</p>  
<p>Final value of string is : ${str2}</p> 

<%-- 7) STARTSWITH() (test if an input string is started with the specified substring) --%>
<c:set var="msg" value="The Example of JSTL fn:startsWith() Function"/>  
The string starts with "The": ${fn:startsWith(msg, 'The')}  
<br>The string starts with "Example": ${fn:startsWith(msg, 'Example')}  

<%-- 8) SPLIT() (splits the string into an array of substrings) --%>
<c:set var="str1" value="Welcome-to-JSTL-Programming-Tutorials."/>  
<c:set var="str2" value="${fn:split(str1, '-')}" />  
<c:set var="str3" value="${fn:join(str2, ' ')}" />  
<p>String-3 : ${str3}</p>  
<c:set var="str4" value="${fn:split(str3, ' ')}" />  
<c:set var="str5" value="${fn:join(str4, '-')}" />  
<p>String-5 : ${str5}</p>  

<%-- 9) TOLOWERCASE() (converts all the characters of a string to lower case) --%>
<c:set var="string" value="Welcome to JSTL Programming Tutorials"/>  
${fn:toLowerCase("HELLO,")}  
${fn:toLowerCase(string)}  

<%-- 10) TOUPPERCASE() (converts all the characters of a string to upper case) --%>
<c:set var="site" value="JSTL Tutorials"/>  
<c:set var="author" value="Gowthamraj K"/>  
Hello all, This is ${fn:toUpperCase(site)} created by ${fn:toUpperCase(author)}. 

<%-- 11) SUBSTRING() (returns the subset of a string) --%>
<c:set var="string" value="This is JSTL programming tutorials by Gowthamraj K."/>  
${fn:substring(string, 5, 23)}  

<%-- 12) SUBSTRINGAFTER() (returns the subset of string followed by a specific substring) --%>
<c:set var="string" value="Gowthamraj Kittusamy"/>  
${fn:substringAfter(string, "Gowthamraj")}  

<%-- 13) SUBSTRINGBEFORE() (returns the subset of string before a specific substring) --%>
<c:set var="string" value="Hello all, This is JSTL Tutorials created by Gowthamraj K."/>  
${fn:substringBefore(string, "JSTL")}  

<%-- 14) LENGTH() (returns the number of characters inside a string) --%>
<c:set var="str1" value="This is first string"/>  
<c:set var="str2" value="Hello"/>  
Length of the String-1 is: ${fn:length(str1)}<br>  
Length of the String-2 is: ${fn:length(str2)}  

<%-- 15) REPLACE() (replaces all the occurrence of a string with another string sequence) --%>
<c:set var="author" value="Gowthamraj Kittusamy"/>  
<c:set var="string" value="pqr xyz abc PQR"/>  
${fn:replace(author, "Gowthamraj", "Kittusamy")}  
${fn:replace(string, "pqr", "hello")}  





</body>
</html>