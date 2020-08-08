
<%@ include file="header.jsp"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="com.best.library.Category"%>


<%
	Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb", "root", "root");
Statement stmt = con.createStatement();
ResultSet rs = stmt.executeQuery("select * from Library-Book");
List<Category> cats = new ArrayList<>();

while (rs.next()) {
	Category cat = new Category(rs.getString(2));
	System.out.println("loop!");

	cats.add(cat);
}
request.setAttribute("cats", cats);
%>
<div class="container pt-4">
	<div class="row">
		<div class="col-sm-12">
			<form action="SaveBook.jsp">
				<h3>Add Book Form</h3>
				Name:<input type="text" name="name" /><br> Author:<input
					type="text" name="author" /><br> Category: <select class="">
					<c:forEach items="${cats}" var="cat">
						<option>${cat.name}</option>
					</c:forEach>
				</select> <br> Price:<input type="text" name="price" /><br> ISBN:
				<input type="text" name="isbn" /><br> <input type="submit"
					value="Save" />
			</form>
		</div>
	</div>
</div>


<%@ include file="footer.jsp"%>
