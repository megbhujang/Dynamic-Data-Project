<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>File Upload</title>
</head>
<body bgcolor="gray">
    <center>        <br><br>
        <br><br>
        <br><br>

        <h1>File Upload to Database</h1>
        <br><br>
        <form method="post" action="uploadServlet" enctype="multipart/form-data">
            <table border="0">
                <tr>
                    <td>Confirm Username: </td>
                    <td><input type="text" name="username" size="50"/></td>
                </tr>
                <tr>
                    <td>Enter FileName: </td>
                    <td><input type="text" name="fn" size="50"/></td>
                </tr>
                <tr>
                    <td>Enter FilePath (without double quotes " "): </td>
                    <td><input type="text" name="file_name" size="50"/></td>
                </tr>
                <tr>
                    <td colspan="2">
                        <input type="submit" value="Save">
                    </td>
                </tr>
            </table>
            <BR>
            <B> <i>MAKE SURE THE FILE PATH IS NOT ENCLOSED IN QUOTES("")</I></B>
        </form>
    </center>
</body>
</html>