<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="com.best.library.*"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
try{
//int id=Integer.parseInt(request.getParameter("id"));
String name=request.getParameter("name");
String category=request.getParameter("category");
String price=request.getParameter("price");
String author=request.getParameter("author");
String isbn=request.getParameter("isbn");

Class.forName("com.mysql.cj.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb", "root", "root");


String sql="insert into Book(id,name,author,category,price,isbn) value(?,?,?,?,?,?)";
try {
	if ( name != "" && author != ""&& category!=" " && price!=" " && isbn!="") {
java.sql.PreparedStatement pstmt = con.prepareStatement(sql);
pstmt.setInt(1,10);
pstmt.setString(2, name);
pstmt.setString(3, author);
pstmt.setString(4,category);
pstmt.setString(5,price);
pstmt.setString(6,isbn);

int status = pstmt.executeUpdate();
if (status > 0)
	System.out.println("Insert is successful!");
	}

	
} catch (SQLException e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
}
} catch (Exception e) {
	System.out.println(e);
}
%>
</body>
</html>