
<%@ page import="java.sql.Statement;"%>
<%@ page import="java.sql.Connection;"%>
<%@page import="java.io.*;"%> 
    <%@page import="javax.servlet.*;"%> 
    <%@page import="javax.servlet.http.*;"%>
    <%@page import="java.sql.*;"%> 
<%
     Connection con=null;
             try 
             {  
                 String fn=request.getQueryString();
                 Class.forName("com.mysql.jdbc.Driver");  
con=DriverManager.getConnection(  
"jdbc:mysql://localhost:3306/project", "root", "");  
    Statement st=con.createStatement();
    int i=st.executeUpdate("update users set master="+1+" where fn='"+fn+"'");
    if(i!=0){
        response.sendRedirect("realadmin.jsp#file");
    }
    else{
        out.println("error while updating");
    }
             }
             catch(Exception e){
                 out.println(e);
             }

%>