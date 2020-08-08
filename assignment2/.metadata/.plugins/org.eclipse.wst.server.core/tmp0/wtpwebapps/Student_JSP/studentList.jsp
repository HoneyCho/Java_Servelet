<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="com.best.library.*"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%@ include file="studentPages.jsp"%>
	<%
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb", "root", "root");
	Statement stmt = con.createStatement();
	ResultSet rs = stmt.executeQuery("select * from Student");
	List<Student> studentList = new ArrayList<>();
	while (rs.next()) {
		Student student = new Student(1, rs.getString(1), rs.getString(2));
		System.out.println("loop!");

		studentList.add(student);
	}

	con.close();
	request.setAttribute("studentList", studentList);
	%>
	<table border="1" width="100%">
	
		<tbody>
				<c:forEach  items="${studentList}" var="student">
			<tr>
				<td>${row.count}</td>
				<td>${student.name}</td>
				<td>${student.rollno }</td>
			</tr>


		</c:forEach>
		</tbody>
	</table>

</body>
</html>