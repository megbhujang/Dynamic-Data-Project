
    import java.io.*;  
    import javax.servlet.*;  
    import javax.servlet.http.*;  
    import java.sql.*;  
        
    public class userview extends HttpServlet  
    {    
         public void doGet(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException 
          {  
             PrintWriter out = res.getWriter();  
             res.setContentType("text/html"); 
             out.println("<body bgcolor='gray'>");
             out.println("<br><br><br><br><br><br><br><br>");
  
             try 
             {  
                 Class.forName("com.mysql.jdbc.Driver");  
Connection con=DriverManager.getConnection(  
"jdbc:mysql://localhost:3306/project", "root", "");  
                 // Here dsnname- mydsn,user id- system(for oracle 10g),password is pintu.  
                 Statement stmt = con.createStatement();  
                 ResultSet rs = stmt.executeQuery("select name, username, password, email, pno, activate from register");  
                 out.println("<center>");
                 out.println("<table border=5 bgcolor='white' width=50% height=20%>");  
                 out.println("<tr><th>Name</th><th>Username</th><th>PassWord</th><th>Email</th><th>Mobile No.</th><th>Activated</th><tr>");  
                 while (rs.next()) 
                 {  
                     String name = rs.getString("name");  
                     String username = rs.getString("username");  
                     String password = rs.getString("password"); 
                     String email = rs.getString("email"); 
                     String pno = rs.getString("pno"); 
                     String status = rs.getString("activate"); 
                     out.println("<tr><td>" + name + "</td><td>" + username + "</td><td>" + password + "</td><td>" + email + "</td><td>" + pno + "</td><td>" + status + "</td></tr>");   
                 }  
                 out.println("</table>");out.println("<br><br>");
                 out.println("Enter Username for Status Change");
                 out.println("</table>");out.println("<br>");
                 out.println("<form action='activate.jsp'>");
                 out.println("<input type ='text' name='username' />");
                 out.println("<input type='submit' name'Change Status' />");
                 out.println("</table>");out.println("<br><br>");
                 out.println("<a href='admin.jsp'>Go Back</a>");
                 con.close();  
                }  
                 catch (Exception e) 
                {  
                 out.println(e);  
             }  
         }  
     }  
