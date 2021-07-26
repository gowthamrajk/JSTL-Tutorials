# JSTL-Tutorials ❤️

- This is my JSTL Tutorials created in-order to make you understand about different JSTL Tags used in JSP pages.

# Introduction 👋

- The JavaServer Pages Standard Tag Library (JSTL) is a collection of useful JSP tags which encapsulates the core functionality common to many JSP applications.
- JSTL has support for common, structural tasks such as iteration and conditionals, tags for manipulating XML documents, internationalization tags, and SQL tags. 
- It also provides a framework for integrating the existing custom tags with the JSTL tags.

# Install JSTL Library 📫 

- To begin working with JSP tages you need to first install the JSTL library. 
- If you are using the Apache Tomcat container, then follow these two steps −

### Step 1 − Download the binary distribution from Apache Standard Taglib and unpack the compressed file.

**Download JAR Files here : [JSTL JAR 1.2](https://tomcat.apache.org/taglibs/standard/)**

### Step 2 − To use the Standard Taglib from its Jakarta Taglibs distribution, simply copy the JAR files in the distribution's 'lib' directory to your application's webapps\ROOT\WEB-INF\lib directory.

**[Note: If you are creating a Maven Project, use the following dependency to add JSTL Jar files]**

      <dependency>
	      <groupId>jstl</groupId>
	      <artifactId>jstl</artifactId>
	      <version>1.2</version>
      </dependency>
      <dependency>
	      <groupId>taglibs</groupId>
	      <artifactId>standard</artifactId>
	      <version>1.1.2</version>
      </dependency>
      

To use any of the libraries, you must include a <taglib> directive at the top of each JSP that uses the library.
  
# Advantage of JSTL 😄
  
- **Fast Development** - JSTL provides many tags that simplify the JSP
- **Code Reusability** - We can use the JSTL tags on various pages
- **No need to use scriptlet tag** - It avoids the use of scriptlet tag
	
# JSTL Tags ✔️

## JSTL Core Tags:  
	
- JSTL Core tags provide support for iteration, conditional logic, catch exception, url, forward or redirect response etc. 
- To use JSTL core tags, we should include it in the JSP page like below.

	### <%@ taglib uri="https://java.sun.com/jsp/jstl/core" prefix="c" %>

## JSTL Formatting and Localisation Tags: 

- JSTL Formatting tags are provided for formatting of Numbers, Dates and i18n support through locales and resource bundles. 
- We can include these jstl tags in JSP with below syntax:

	### <%@ taglib uri="https://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

## JSTL SQL Tags: 

- JSTL SQL Tags provide support for interaction with relational databases such as Oracle, MySql etc. 
- Using JSTL SQL tags we can run database queries, we include these JSTL tags in JSP with below syntax:

	### <%@ taglib uri="https://java.sun.com/jsp/jstl/sql" prefix="sql" %>

## JSTL XML Tags: 
	
- JSTL XML tags are used to work with XML documents such as parsing XML, transforming XML data and XPath expressions evaluation. 
-Syntax to include JSTL XML tags in JSP page is:

	### <%@ taglib uri="https://java.sun.com/jsp/jstl/xml" prefix="x" %>

## STL Functions Tags: 
	
- JSTL tags provide a number of functions that we can use to perform common operation, most of them are for String manipulation such as String Concatenation, Split String etc. 
- Syntax to include JSTL functions in JSP page is:

	### <%@ taglib uri="https://java.sun.com/jsp/jstl/functions" prefix="fn" %>


# JSTL Core Tags ⌚

### <c:out> 
- To write something in JSP page, we can use EL also with this tag
### <c:import> 
- Same as <jsp:include> or include directive
### <c:redirect> 
- redirect request to another resource
### <c:set>
- To set the variable value in given scope.
### <c:remove>
- To remove the variable from given scope
### <c:catch>
- To catch the exception and wrap it into an object.
### <c:if>
- Simple conditional logic, used with EL and we can use it to process the exception from <c:catch>
### <c:choose>	Simple conditional tag that establishes a context for mutually exclusive conditional operations, marked by <c:when> and <c:otherwise>
### <c:when>	Subtag of <c:choose> that includes its body if its condition evalutes to ‘true’.
### <c:otherwise>	Subtag of <c:choose> that includes its body if its condition evalutes to ‘false’.
### <c:forEach>	for iteration over a collection
### <c:forTokens>	for iteration over tokens separated by a delimiter.
### <c:param>	used with <c:import> to pass parameters
<c:url>	to create a URL with optional query string parameters
