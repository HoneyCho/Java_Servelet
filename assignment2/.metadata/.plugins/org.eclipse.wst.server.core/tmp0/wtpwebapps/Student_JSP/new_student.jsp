<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>New Student</title>
</head>
<body>
<%@ include file="studentPages.jsp" %>

<form action="save_student.jsp">
Name:<input type="text" name="name" /><br>
Roll No:<input type="text" name="rollno" /><br>
<input type="submit" value="Save" />
</form>

</body>
</html>