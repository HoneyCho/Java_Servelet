<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@ include file="menu.jsp" %>
<table border="1" width="100%">
<tr>
<th>No.</th>
<th>Name</th>
<th>Address</th>
</tr>
<c:forEach var="emp" items="${studentList}" varStatus="row">
     <tr>
     <td>${row.count }</td>
     <td>${emp.name }</td>
      <td>${emp.rollno }</td>
     </tr>
    
     
</c:forEach>
</table>

</body>
</html>