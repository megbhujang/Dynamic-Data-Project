
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">

	<title>Dynamic Data Sharing-ADMIN</title>
	<link rel="stylesheet" type="text/css" href="css/bootstrap.css"/>
	<link rel="stylesheet" href="./css/style.css"/>
	<script type="text/javascript" src="js/bootstrap.min.js"/></script>
	<script type="text/javascript" src="js/jquery.min.js"/></script>
	<script type="text/javascript" src="js/popper.min.js"/></script>
</head>

<style>
  body {
      position: relative; 
background-image:url('img/data-original.jpg');
background-repeat: no-repeat;
background-attachment: fixed;
background-size:cover;
  }
  function removeRow(e1){
      e1.parentNode.remove();
  })
</style>

  <script> 
$(document).ready(function(){
  $("#flip").click(function(){
    $("#panel").slideToggle("slow");
  });
});
</script>
<body data-spy="scroll" data-target=".navbar" data-offset="100">
	<header class="fixed-top">
		<div class="container">
			
			<div id="branding">
                            <h1><span class="highlight">   ADMIN </span></center</h1>
				
<br>

			</div>

		</div>

	<section id="navy">
		<div class="container">
			<nav>
				<ul>
                                    <li><a href="realadmin.jsp"><B>ADMIN HOME</B></a></li>
                                    <li><a href="#file"><B>FILE CLUSTER</B></a></li>
                                    
		
          <li><a href="#master"><B>MASTER</b></a></li>
         <li><a href="#worker"><B>WORKER</b></a></li>
         <li><a href=home.html><B>LOGOUT</b></a></li>
				</ul>
			</nav>
		</div>
  </div>
</div>
</header>

<div id="home" class="container_space">
<br>
</div>
<div class="container">
  <div class="row">
    <div class="col"><br><br><br><br><br>
<br>
      
<br>
</div>
</div>
<div class="row" >
      
<br>
</div>
</div>
    <br><br><br><br><<br>
<div id ="file" class="container">
   
    <%@page import="java.io.*;"%> 
    <%@page import="javax.servlet.*;"%> 
    <%@page import="javax.servlet.http.*;"%>
    <%@page import="java.sql.*;"%> 
    <br><br><br><br><br><br><br>  
    <h1><center>FILES</center></h1>
<body bgcolor='gray'>
<br><br>
  <%
      Connection con=null;
             try 
             {  
                 Class.forName("com.mysql.jdbc.Driver");  
con=DriverManager.getConnection(  
"jdbc:mysql://localhost:3306/project", "root", "");  
                 // Here dsnname- mydsn,user id- system(for oracle 10g),password is pintu.  
                 Statement stmt = con.createStatement();  
                 ResultSet rs = stmt.executeQuery("select fn, owner_name, upload_time from users where master='"+0+"' and worker='"+0+"'");  
                 %><center>
                 <table border='10 px solid black' bgcolor='gray' style="color:black;" width=50% height=20%>  
                 <tr><th>File Name</th><th>Owner Name</th><th>Upload Time</th><th>Cluster</th><tr>
                <% while (rs.next()) 
                 {  
                     %>
                     <tr>
                         <td><%=rs.getString("fn") %></td>
                         <td><%=rs.getString("owner_name") %></td>
                         <td><%=rs.getString("upload_time") %></td>
                         <td><a href="cluster1.jsp?<%=rs.getString("fn")%>"><B>Cluster</B></a></td>
                     </tr>
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
      
 <br><br><br><br>
 </div>
         
         
         
         <br><br><br><br><br><br>     <br><br>   
         
         <div id ="master" class="container">
   
    <%@page import="java.io.*;"%> 
    <%@page import="javax.servlet.*;"%> 
    <%@page import="javax.servlet.http.*;"%>
    <%@page import="java.sql.*;"%> 
  <br><br><br><br><br><br>      
    <h1><center>Master Table</h1>
<body bgcolor='gray'>
<br><br>
  <%
      Connection conn=null;
             try 
             {  
                 Class.forName("com.mysql.jdbc.Driver");  
conn=DriverManager.getConnection(  
"jdbc:mysql://localhost:3306/project", "root", "");  
                 // Here dsnname- mydsn,user id- system(for oracle 10g),password is pintu.  
                 Statement stmt = conn.createStatement();  
                 ResultSet rs = stmt.executeQuery("select fileid, fn, upload_time from users where master='"+1+"' and worker='"+0+"'");  
                 %><center>
                 <table border='10 px solid black' bgcolor='gray' style="color:black;" width=50% height=20%>  
                 <tr><th>Key Index</th><th>File Name</th><th>Upload Time</th><th>Allocate</th><tr>
                <% while (rs.next()) 
                 {  
                     %>
                     <tr>
                         <td><%=rs.getInt("fileid") %></td>
                         <td><%=rs.getString("fn") %></td>
                         <td><%=rs.getString("upload_time") %></td>
                         <td><a href="cluster2.jsp?<%=rs.getString("fn")%>"><B>Insert File To Worker</B></a></td>
                     </tr>
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
      
 <br><br><br><br>
 </div>
         
         
         
 <br><br>                 
         <div id ="worker" class="container">
   
    <%@page import="java.io.*;"%> 
    <%@page import="javax.servlet.*;"%> 
    <%@page import="javax.servlet.http.*;"%>
    <%@page import="java.sql.*;"%> 
<br><br><br>        
    <h1><center>Workers Table</h1>
<body bgcolor='gray'>
<br><br>
  <%
      Connection conn1=null;
             try 
             {  
                 Class.forName("com.mysql.jdbc.Driver");  
conn1=DriverManager.getConnection(  
"jdbc:mysql://localhost:3306/project", "root", "");  
                 // Here dsnname- mydsn,user id- system(for oracle 10g),password is pintu.  
                 Statement stmt = conn1.createStatement();  
                 ResultSet rs = stmt.executeQuery("select fileid, fn, upload_time from users where master='"+1+"' and worker='"+1+"'");  
                 %><center>
                 <table border='10 px solid black' bgcolor='gray' style="color:black;" width=50% height=20%>  
                 <tr><th>Key Index</th><th>File Name</th><th>Upload Time</th><tr>
                <% while (rs.next()) 
                 {  
                     %>
                     <tr>
                         <td><%=rs.getInt("fileid") %></td>
                         <td><%=rs.getString("fn") %></td>
                         <td><%=rs.getString("upload_time") %></td>
                         
                     </tr>
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
      
 <br><br><br><br>
 </div>