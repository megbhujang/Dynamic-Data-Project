<%-- 
    Document   : tsearch
    Created on : 17 Aug, 2020, 1:07:51 AM
    Author     : Megana
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Template Search Page</title>
    </head>


 
    <%@page import="java.io.*;"%> 
    <%@page import="javax.servlet.*;"%> 
    <%@page import="javax.servlet.http.*;"%>
    <%@page import="java.sql.*;"%> 
        
    
<body bgcolor='gray'>
<br><br><br><br><br><br><br><br>
  <%
      Connection con=null;
             try 
             {  
                 String ids=request.getParameter("id");
                 int id=Integer.parseInt(ids.trim());
                 Class.forName("com.mysql.jdbc.Driver");  
con=DriverManager.getConnection(  
"jdbc:mysql://localhost:3306/project", "root", "");  
                 // Here dsnname- mydsn,user id- system(for oracle 10g),password is pintu.  
                 Statement stmt = con.createStatement();  
                 ResultSet rs = stmt.executeQuery("select fileid, fn, owner_name, upload_time from users where fileid ="+id+"");  
                 %>"<center>
                 <table border='10 px solid black' bgcolor='gray' style="color:black;" width=50% height=20%>  
                 <tr><th>CLUSTER_ID</th><th>File Name</th><th>OWNER NAME</th><th>UPLOAD TIME</th><tr>
                <% while (rs.next()) 
                 {  
                     %>
                     <tr>
                         <td><%=rs.getString("fileid") %></td>
                         <td><%=rs.getString("fn") %></td>
                         <td><%=rs.getString("owner_name") %></td>
                         <td><%=rs.getString("upload_time") %></td>
                         
                <% 
                 }  %>
                 </table>
                 <br><br>
                 <%}  
                 catch (Exception e) 
                {  
                    out.println(e);%><br><%  
             }
             finally{
                 con.close();
         }%>  
         <form action="downloadFileServlet" method="get">
             Confirm File ID from above table: <input type="text" name="id" />
         <input type="submit" value="Download">
         </form>
      
