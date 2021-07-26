# JSTL-Tutorials ❤️

![](https://img.shields.io/github/languages/count/gowthamrajk/JSTL-Tutorials)   ![](https://img.shields.io/github/languages/top/gowthamrajk/JSTL-Tutorials)

- This is my **JSTL Tutorial** which is about **JSTL (JSP Tag Libraries)** that gives you a clear understanding about all the JSTL tags and their functionalities with practical code implementations for each tags.

# Introduction 👋

- The JavaServer Pages Standard Tag Library (JSTL) is a collection of useful JSP tags which encapsulates the core functionality common to many JSP applications.
- JSTL has support for common, structural tasks such as iteration and conditionals, tags for manipulating XML documents, internationalization tags, and SQL tags. 
- It also provides a framework for integrating the existing custom tags with the JSTL tags.

# Install JSTL Library 📫 

- To begin working with JSP tages you need to first install the JSTL library. 
- If you are using the Apache Tomcat container, then follow these two steps −

### Step 1 :

**- Download the binary distribution from Apache Standard Taglib and unpack the compressed file.**

**Download JAR Files here : [JSTL JAR 1.2](https://tomcat.apache.org/taglibs/standard/)**

### Step 2 :

**− To use the Standard Taglib from its Jakarta Taglibs distribution, simply copy the JAR files in the distribution's 'lib' directory to your application's webapps\ROOT\WEB-INF\lib directory.**

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

# JSTL Formatting Tags ⌛

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

# JSTL SQL Tags ⏩

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
	
# JSTL XML tags 📌

## <x:out>
- Like <%= ... >, but for XPath expressions.
## <x:parse>
- Used to parse the XML data specified either via an attribute or in the tag body.
## <x:set >
- Sets a variable to the value of an XPath expression.
## <x:if >
- Evaluates a test XPath expression and if it is true, it processes its body. If the test condition is false, the body is ignored.
## <x:forEach>
- To loop over nodes in an XML document.
## <x:choose>
- Simple conditional tag that establishes a context for mutually exclusive conditional operations, marked by <when> and <otherwise> tags.
## <x:when >
- Subtag of <choose> that includes its body if its expression evalutes to 'true'.
## <x:otherwise >
- Subtag of <choose> that follows the <when> tags and runs only if all of the prior conditions evaluates to 'false'.
## <x:transform >
- Applies an XSL transformation on a XML document
## <x:param >
- Used along with the transform tag to set a parameter in the XSLT stylesheet

# JSTL Function Tags ✔️

## <<fn:contains()>>
- Tests if an input string contains the specified substring.
## <<fn:containsIgnoreCase()>>
- Tests if an input string contains the specified substring in a case insensitive way.
## <<fn:endsWith()>>
- Tests if an input string ends with the specified suffix.
## <<fn:escapeXml()>>
- Escapes characters that can be interpreted as XML markup.
## <<fn:indexOf()>>
- Returns the index withing a string of the first occurrence of a specified substring.
## <<fn:join()>>
- Joins all elements of an array into a string.
## <<fn:length()>>
- Returns the number of items in a collection, or the number of characters in a string.
## <<fn:replace()>>
- Returns a string resulting from replacing in an input string all occurrences with a given string.
## <<fn:split()>>
- Splits a string into an array of substrings.
## <<fn:startsWith()>>
- Tests if an input string starts with the specified prefix.
## <<fn:substring()>>
- Returns a subset of a string.
## <<fn:substringAfter()>>
- Returns a subset of a string following a specific substring.
## <<fn:substringBefore()>>
- Returns a subset of a string before a specific substring.
## <<fn:toLowerCase()>>
- Converts all of the characters of a string to lower case.
## <<fn:toUpperCase()>>
- Converts all of the characters of a string to upper case.
## <<fn:trim()>>
- Removes white spaces from both ends of a string.

	
<br><br>
**For more queries, reach me through gowthamraj692@gmail.com or whatsapp @ 9698382306**

<br>

<div align="center">

# Show some ❤️ by starring this repository !!!

</div>

<br>

## Tutorials Created & Maintained By 

# ![](https://img.shields.io/static/v1?style=for-the-badge&message=Gowthamraj+K&color=007396&label=) 😄

![](https://img.shields.io/static/v1?style=for-the-badge&message=Fullstack+Web+Developer&color=0b3d36&label=)  ![](https://img.shields.io/static/v1?style=for-the-badge&message=UI+Designer&color=d92323&label=) ![](https://img.shields.io/static/v1?style=for-the-badge&message=Learning+new+things&color=0c0c4f&label=)  ![](https://img.shields.io/static/v1?style=for-the-badge&message=Design+Thinker&color=0b3d17&label=) 

<br>

### Connect with me 👋:

[<img align="left" alt="code-Jamm.in" width="22px" src="https://raw.githubusercontent.com/iconic/open-iconic/master/svg/globe.svg" />][website1]
[<img align="left" alt="GowthamRaj | YouTube" width="22px" src="https://cdn.jsdelivr.net/npm/simple-icons@v3/icons/youtube.svg" />][youtube]
[<img align="left" alt="GowthamRaj " width="22px" src="https://www.iconfinder.com/data/icons/logos-and-brands/512/160_Hackerrank_logo_logos-512.png" />][hackerrank]
[<img align="left" alt="GowthamRaj  | Twitter" width="22px" src="https://cdn.jsdelivr.net/npm/simple-icons@v3/icons/twitter.svg" />][twitter]
[<img align="left" alt="GowthamRaj  | LinkedIn" width="22px" src="https://cdn.jsdelivr.net/npm/simple-icons@v3/icons/linkedin.svg" />][linkedin]
[<img align="left" alt="GowthamRaj  | Instagram" width="22px" src="https://cdn.jsdelivr.net/npm/simple-icons@v3/icons/instagram.svg" />][instagram]
[![](https://img.shields.io/badge/9698382306-25D366?style=social&logo=whatsapp&logoColor=green)]()

<br>

## Copyright-and-license 📌

Code and documentation Copyright 2021 : **Gowthamraj K**

[website1]: https://sites.google.com/view/code-jamm
[hackerrank]: https://www.hackerrank.com/gowthamraj692
[website]: https://github.com/gowthamrajk
[twitter]: https://twitter.com/Gowtham29341737
[youtube]: https://www.youtube.com/channel/UC_Q5Zet9Oz-UVAeJ-oE_uGQ?view_as=subscriber
[instagram]: https://instagram.com/gow_t_h_a_m_r_a_j
[linkedin]: https://www.linkedin.com/in/gowtham-kittusamy-54b835174/
