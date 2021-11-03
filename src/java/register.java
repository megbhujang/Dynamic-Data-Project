import java.io.*;  
import java.sql.*;  
import javax.servlet.ServletException;  
import javax.servlet.http.*;  
  
public class register extends HttpServlet {  
public void doPost(HttpServletRequest request, HttpServletResponse response)  
            throws ServletException, IOException {  
  
response.setContentType("text/html");  
PrintWriter out = response.getWriter();  
          
String name=request.getParameter("name");  
String username=request.getParameter("username");  
String password=request.getParameter("password");  
String rpassword=request.getParameter("rpassword");  
String email=request.getParameter("email");  
String pno=request.getParameter("pno");  
          
try{  
Class.forName("com.mysql.jdbc.Driver");  
Connection con=DriverManager.getConnection(  
"jdbc:mysql://localhost:3306/project", "root", "");  
  
PreparedStatement ps=con.prepareStatement(  
"insert into register(name,username,password,rpassword,email,pno) values(?,?,?,?,?,?)");  
  
ps.setString(1,name);  
ps.setString(2,username);  
ps.setString(3,password);  
ps.setString(4,rpassword);  
ps.setString(5,email);  
ps.setString(6,pno);  
int i=ps.executeUpdate();  
if(i>0)  
out.print("You are successfully registered...");  
      
          
}catch (Exception e2) {System.out.println(e2);}  
          
out.close();  
}  
  }