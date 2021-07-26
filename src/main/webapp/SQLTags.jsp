<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>SQL Tags</title>
</head>
<body>





<%-- JSTL SQL Tags --%>

<%-- 1) SET DATASOURCE (used for creating a simple data source suitable only for prototyping) --%>
<sql:setDataSource var="db" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost/test" user="root" password="your_passowrd"/> 


<%-- 2) QUERY (used for executing the SQL query defined in its sql attribute or the body. It is used to execute an SQL SELECT statement and saves the result in scoped variable) --%>
<sql:query dataSource="${db}" var="rs">  
SELECT * from Students;  
</sql:query>  
<table border="2" width="100%">  
<tr>  
<th>Student ID</th>  
<th>First Name</th>  
<th>Last Name</th>  
<th>Age</th>  
</tr>  
<c:forEach var="table" items="${rs.rows}">  
<tr>  
<td><c:out value="${table.id}"/></td>  
<td><c:out value="${table.First_Name}"/></td>  
<td><c:out value="${table.Last_Name}"/></td>  
<td><c:out value="${table.Age}"/></td>  
</tr>  
</c:forEach>  
</table>  


<%-- 3) UPDATE (used for executing the SQL DML query defined in its sql attribute or in the tag body) --%>
<sql:update dataSource="${db}" var="count">  
INSERT INTO Students VALUES (154,'Nasreen', 'jaha', 25);  
</sql:update>


<%-- 4) PARAM (sets the parameter value in SQL statement) --%>
<c:set var="StudentId" value="152"/>  
<sql:update dataSource="${db}" var="count">  
DELETE FROM Students WHERE Id = ?  
<sql:param value="${StudentId}" />  
</sql:update>  


<%-- 5) DATE PARAM (used to set the specified date for SQL query parameter) --%>
<%  
Date DoB = new Date("2021/07/25");  
int studentId = 151;  
%>  
<sql:update dataSource="${db}" var="count">  
   UPDATE Student SET dob = ? WHERE Id = ?  
   <sql:dateParam value="<%=DoB%>" type="DATE" />  
   <sql:param value="<%=studentId%>" />  
</sql:update> 


<%-- 6) TRANSACTION (used to group multiple <sql:update> into common transaction) --%>
<%  
Date doB = new Date("2021/07/25");  
int studentId2 = 151;  
%>  
<sql:transaction dataSource="${db}">  
   <sql:update var="count">  
      UPDATE Student SET First_Name = 'Suraj' WHERE Id = 150  
   </sql:update>  
   <sql:update var="count">  
      UPDATE Student SET Last_Name= 'Saifi' WHERE Id = 153  
   </sql:update>  
   <sql:update var="count">  
     INSERT INTO Student VALUES (154,'Supriya', 'Jaiswal', '1995/10/6');  
   </sql:update>  
</sql:transaction>  





</body>
</html>