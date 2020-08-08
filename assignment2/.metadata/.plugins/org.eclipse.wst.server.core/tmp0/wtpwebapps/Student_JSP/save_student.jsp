<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="com.best.library.*"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Save Student</title>
</head>
<body>
	<%
		try {

		String name = request.getParameter("name");
		String rollno = request.getParameter("rollno");

		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb", "root", "root");

		String sql = "insert into Student(name,rollno) values(?,?)";
		try {
			if (name != "" && rollno != "") {
		java.sql.PreparedStatement pstmt = con.prepareStatement(sql);
		pstmt.setString(1, name);
		pstmt.setString(2, rollno);
		int status = pstmt.executeUpdate();
		if (status > 0)
			System.out.println("Insert is successful!");
			}

			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		/*Statement stmt=con.createStatement();  
		ResultSet rs=stmt.executeQuery("select * from employee");  
		while(rs.next())  
		System.out.println(rs.getInt(1)+"  "+rs.getString(2)+"  "+rs.getString(3));  
		con.close();  
		*/
	} catch (Exception e) {
		System.out.println(e);
	}
	%>
</body>
</html>