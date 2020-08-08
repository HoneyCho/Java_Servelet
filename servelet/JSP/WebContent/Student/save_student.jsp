<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ page import = "java.io.*,java.util.*,java.sql.*"%>
 <%@ page import="com.best.ee.*" %>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
try{
	
	String name= request.getParameter("name");
	String rollno= request.getParameter("rollno");
	
	Class.forName("com.mysql.cj.jdbc.Driver");  
Connection con=DriverManager.getConnection(  
	"jdbc:mysql://localhost:3306/university_db","root","root");  

String sql="insert into student(name,rollno) values(?,?)";
try {
	if(name!="" && rollno!=""){
		java.sql.PreparedStatement pstmt=con.prepareStatement(sql);
		pstmt.setString(1, name);
		pstmt.setString(2, rollno);
		int status=pstmt.executeUpdate();
		if(status>0)
			System.out.println("Insert is successful!");
	}
	
	
	String destination = "studentList.jsp";
	RequestDispatcher requestDispatcher = request.getRequestDispatcher(destination);

	
	Statement stmt=con.createStatement();  
	ResultSet rs=stmt.executeQuery("select * from student");  
	List<Student> empList=new ArrayList<>();
	while(rs.next()) {
		Student emp=new Student(rs.getInt(1),rs.getString(2),rs.getString(3));
		
		empList.add(emp);
	}
	
	con.close();  
	request.setAttribute("studentList", empList);
	requestDispatcher.forward(request, response);
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
	}catch(Exception e){ System.out.println(e);}  



%>
</body>
</html>