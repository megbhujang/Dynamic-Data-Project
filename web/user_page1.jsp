<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">

	<title>Dynamic Data Sharing-USER</title>
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
                            <h1><span class="highlight">DATA USER </span></center</h1>
				
<br>

			</div>

		</div>

	<section id="navy">
		<div class="container">
			<nav>
				<ul>
                                    <li><a href="user_page1.jsp"><B>USER HOME</B></a></li>
                                    <li><a href="upload.jsp"><B>UPLOAD</B></a></li>
                                    
		
          <li><a href="#tsearch"><B>Temp-SEARCH</b></a></li>
         <li><a href=home.html><B>LOGOUT</b></a></li>
				</ul>
			</nav>
		</div>
  </div>
</div>
</header>
    <div class="container">
        <br><br><br><br><br><br>   
    </div>
 <br><br><br><br>     <br><br><br><br><br><br>      <br><br><br><br><br><br>    <br><br><br><br><br><br>    <br><br><br><br><br><br>   
<div id="tsearch" class="container">
        <h1>Enter Template ID</h1>
        <form method="post" action="tsearch.jsp">
            <table border="0">
                <tr>
                    <td>Enter Template ID: </td>
                    <td><input type="text" name="id" size="50"/></td>
                </tr>
                
                    <td colspan="2">
                        <input type="submit" value="Search">
                    </td>
                </tr>
            </table>
        </form>
             <br><br><br><br>    <br><br><br><br><br><br>    <br><br><br><br><br><br>   
</div>   
