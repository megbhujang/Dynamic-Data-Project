<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">

	<title>Dynamic Data Sharing-SERVER</title>
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
                            <h1><span class="highlight">SERVER </span></center</h1>
				
<br>

			</div>

		</div>

	<section id="navy">
		<div class="container">
			<nav>
				<ul>
                                    <li><a href="admin.jsp"><B>SERVER HOME</B></a></li>
                                    
		
          <li><a href=home.html><B>LOGOUT</b></a></li>
         
				</ul>
			</nav>
		</div>
  </div>
</div>
</header>
         <br><br><br>   <br><br><br><br><br><br>  
    <h1 style="color:white;">Click here to Activate Users -> </h1><form action="userview"><b>
                <input type="submit" value="Users View" />
        </form></b></a>
     <br>
    
    <div id ="file" class="container">
   
    <%@page import="java.io.*;"%> 
    <%@page import="javax.servlet.*;"%> 
    <%@page import="javax.servlet.http.*;"%>
    <%@page import="java.sql.*;"%> 
    <br><br>  
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
                 ResultSet rs = stmt.executeQuery("select fn, owner_name, upload_time from users");  
                 %><center>
                 <table border='10 px solid black' bgcolor='gray' style="color:black;" width=50% height=20%>  
                 <tr><th>File Name</th><th>Owner Name</th><th>Upload Time</th><tr>
                <% while (rs.next()) 
                 {  
                     %>
                     <tr>
                         <td><%=rs.getString("fn") %></td>
                         <td><%=rs.getString("owner_name") %></td>
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
         
         
         
         