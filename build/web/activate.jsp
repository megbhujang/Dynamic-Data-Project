<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<%@ page import="java.sql.*" %>
<%@ page  import="java.io.*"  %>
<%@ page import="java.sql.*"  %>
<%@ page import="javax.servlet.ServletException"  %>
<%@ page import="javax.servlet.http.*" %>

<%
String username = request.getParameter("username");
if(username != null)
{
Connection con = null;
PreparedStatement ps = null;
String no=new String("no");
String sql;
try
{
Class.forName("com.mysql.jdbc.Driver");  
Connection con1=DriverManager.getConnection(  
"jdbc:mysql://localhost:3306/project", "root", ""); 
Statement st=con1.createStatement();
          ResultSet rt=st.executeQuery("select * from register where username='"+username+"'");
          if(rt.next()){
              String s=rt.getString("activate");
              if(s.equalsIgnoreCase(no)){
sql="Update register set activate='yes' where username='"+username+"'";
              }
              else
              {
                  sql="Update register set activate='no' where username='"+username+"'";
              }
                  
ps = con1.prepareStatement(sql);
int i = ps.executeUpdate();}
String red="userview";
response.sendRedirect(red);
}
catch(SQLException e)
{
request.setAttribute("error", e);
out.println(e);
}
}
%>
