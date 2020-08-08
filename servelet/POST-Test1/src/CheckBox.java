import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class CheckBox extends HttpServlet{
public void doGet(HttpServletRequest request,HttpServletResponse response)
throws IOException,ServletException{
response.setContentType("text/html");
PrintWriter out=response.getWriter();
out.println("<html><body><ul><li> Math :"+request.getParameter("maths")
+"<li>Physics:" + request.getParameter("physics")
+"<li>Chemistry:"+request.getParameter("chem")
+"</ul></body></html>");


}
public void doPost(HttpServletRequest request,HttpServletResponse response)
throws IOException, ServletException{
	doGet(request,response);
}
}
