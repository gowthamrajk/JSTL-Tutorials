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
### <c:choose>
- Simple conditional tag that establishes a context for mutually exclusive conditional operations, marked by <c:when> and <c:otherwise>
### <c:when>
- Subtag of <c:choose> that includes its body if its condition evalutes to ‘true’.
### <c:otherwise>
- Subtag of <c:choose> that includes its body if its condition evalutes to ‘false’.
### <c:forEach>
- for iteration over a collection
### <c:forTokens>
- for iteration over tokens separated by a delimiter.
### <c:param>
- used with <c:import> to pass parameters
### <c:url>
- To create a URL with optional query string parameters

# Formatting Tags ⌛

### <<fmt:formatNumber>>
- To render numerical value with specific precision or format.
### <<fmt:parseNumber>>
- Parses the string representation of a number, currency, or percentage.
### <<fmt:formatDate>>
- Formats a date and/or time using the supplied styles and pattern.
### <<fmt:parseDate>>
- Parses the string representation of a date and/or time
### <<fmt:bundle>>
- Loads a resource bundle to be used by its tag body.
### <<fmt:setLocale>>
- Stores the given locale in the locale configuration variable.
### <<fmt:setBundle>>
- Loads a resource bundle and stores it in the named scoped variable or the bundle configuration variable.
### <<fmt:timeZone>>
- Specifies the time zone for any time formatting or parsing actions nested in its body.
### <<fmt:setTimeZone>>
- Stores the given time zone in the time zone configuration variable
### <<fmt:message>>
- Displays an internationalized message.
### <<fmt:requestEncoding>>
- Sets the request character encoding

# SQL Tags ⏩

## <<sql:setDataSource>>
- Creates a simple DataSource suitable only for prototyping
## <<sql:query>>
- Executes the SQL query defined in its body or through the sql attribute.
## <<sql:update>>
- Executes the SQL update defined in its body or through the sql attribute.
## <<sql:param>>
- Sets a parameter in an SQL statement to the specified value.
## <<sql:dateParam>>
- Sets a parameter in an SQL statement to the specified java.util.Date value.
## <<sql:transaction>>
- Provides nested database action elements with a shared Connection, set up to execute all statements as one transaction.
	
# XML tags 📌

## <x:out>
Like <%= ... >, but for XPath expressions.

2	<x:parse>
Used to parse the XML data specified either via an attribute or in the tag body.

3	<x:set >
Sets a variable to the value of an XPath expression.

4	<x:if >
Evaluates a test XPath expression and if it is true, it processes its body. If the test condition is false, the body is ignored.

5	<x:forEach>
To loop over nodes in an XML document.

6	<x:choose>
Simple conditional tag that establishes a context for mutually exclusive conditional operations, marked by <when> and <otherwise> tags.

7	<x:when >
Subtag of <choose> that includes its body if its expression evalutes to 'true'.

8	<x:otherwise >
Subtag of <choose> that follows the <when> tags and runs only if all of the prior conditions evaluates to 'false'.

9	<x:transform >
Applies an XSL transformation on a XML document

10	<x:param >
Used along with the transform tag to set a parameter in the XSLT stylesheet
