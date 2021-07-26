<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>JSTL CORE TAGS</title>
</head>
<body>



<%-- Normal usage of JSP request/session attributes via requestDispatcher --%>
<%
    String name = request.getAttribute("username").toString();
    out.println(name);
%>



<%-- special JSP tag usage for printing the attribute value --%>
${username}




<%-- using JSTL CORE tags --%>

<%-- 1) OUT (used to print output)--%>
<c:out value="${username}"/>

<%-- 2) IMPORT (used to get the HTML content of a website mentioned in URL)--%>
<c:import var="data" url="https://gowthamrajk.github.io/"/> 
<c:out value="${data}"/>  

<%-- 3) SET (used to set the result of an expression) --%>
<c:set var="Income" scope="session" value="${4000*4}"/>  
<c:out value="${Income}"/>  

<%-- 4) REMOVE (used for removing the specified variable from a particular scope) --%>
<c:set var="income" scope="session" value="${4000*4}"/>  
<p>Before Remove Value is: <c:out value="${income}"/></p>  
<c:remove var="income"/>  
<p>After Remove Value is: <c:out value="${income}"/></p>  

<%-- 5) CATCH (used for Catches any Throwable exceptions that occurs in the body and optionally exposes it)--%>
<c:catch var ="catchtheException">  
   <% int x = 2/0;%>  
</c:catch>  
  
<c:if test = "${catchtheException != null}">  
   <p>The type of exception is : ${catchtheException} <br />  
   There is an exception: ${catchtheException.message}</p>  
</c:if>  
  
<%-- 6) IF (used for testing the condition) --%>
<c:set var="income" scope="session" value="${4000*4}"/>  
<c:if test="${income > 8000}">  
   <p>My income is: <c:out value="${income}"/><p>  
</c:if> 

<%-- 7) CHOOSE (works like a Java switch statement) --%>
<c:set var="income" scope="session" value="${4000*4}"/>  
<p>Your income is : <c:out value="${income}"/></p>  
<c:choose>  
    <c:when test="${income <= 1000}">  
       Income is not good.  
    </c:when>  
    <c:when test="${income > 10000}">  
        Income is very good.  
    </c:when>  
    <c:otherwise>  
       Income is undetermined...  
    </c:otherwise>  
</c:choose>  

<%-- 8) WHEN (subtag of <choose > that will include its body if the condition evaluated be 'true') --%>
<c:set value="10" var="num"></c:set>  
<c:choose>  
<c:when test="${num%2==0}">  
<c:out value="${num} is even number"></c:out>  
</c:when>
</c:choose>   

<%-- 9) OTHERWISE (subtag of < choose > it follows &l;twhen > tags and runs only if all the prior condition evaluated is 'false') --%>
<c:set value="10" var="num"></c:set>  
<c:choose>  
<c:when test="${num%2==0}">  
<c:out value="${num} is even number"></c:out>  
</c:when>  
<c:otherwise>  
<c:out value="${num} is odd number"></c:out>  
</c:otherwise>  
</c:choose>  

<%-- 10) FOREACH (iteration tag used for repeating the nested body content for fixed number of times) --%>
<c:forEach var="j" begin="1" end="3">  
   Item <c:out value="${j}"/><p>  
</c:forEach>  

<%-- 11) FORTOKENS (iterates over tokens which is separated by the supplied de-limeters. It is used for break a string into tokens and iterate through each of the tokens) --%>
<c:forTokens items="Rahul-Nakul-Rajesh" delims="-" var="name">  
   <c:out value="${name}"/><p>  
</c:forTokens>  

<%-- 12) PARAM (add the parameter in a containing 'import' tag's URL) --%>
<c:url value="/FunctionTags.jsp" var="https://gowthamrajk.github.io/">  
 <c:param name="trackingId" value="786"/>  
 <c:param name="user" value="Nakul"/>  
</c:url>  
${completeURL}  

<%-- 13) REDIRECT (redirects the browser to a new URL) --%>
<c:set var="url" value="0" scope="request"/>  
<c:if test="${url<1}">  
   <c:redirect url="https://gowthamrajk.github.io/"/>  
</c:if>  
<c:if test="${url>1}">  
   <c:redirect url="https://gowthamrajk.github.io/"/>  
</c:if>  

<%-- 14) URL (creates a URL with optional query parameter) --%>
<c:url value="/FunctionTags.jsp"/>  



</body>
</html>