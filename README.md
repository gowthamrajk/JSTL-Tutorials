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
- JSTL Core tags provide support for iteration, conditional logic, catch exception, url, forward or redirect response etc. To use JSTL core tags, we should include it in the JSP page like below.

<%@ taglib uri="https://java.sun.com/jsp/jstl/core" prefix="c" %>
