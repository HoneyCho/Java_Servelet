<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.best.ee.*" %>
    <%@ page import = "java.io.*,java.util.*,java.sql.*"%>
    <%@ page import="org.json.*" %>try{
	
	String name= request.getParameter("name");
	String address= request.getParameter("address");
	Class.forName("com.mysql.cj.jdbc.Driver");  
Connection con=DriverManager.getConnection(  
	"jdbc:mysql://localhost:3306/university_db","root","root");  

try {
	
	Statement stmt=con.createStatement();  
	ResultSet rs=stmt.executeQuery("select * from student");  
	List<Student> empList=new ArrayList<>();
	while(rs.next()) {
Student emp=new Student(rs.getInt(1),rs.getString(2),rs.getString(3));
		
		empList.add(emp);
	}
	
	con.close();  
	//request.setAttribute("employeeList", empList);
	JSONObject json  = new JSONObject();
	json.put("stdList", empList);
	response.getWriter().print(json);
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