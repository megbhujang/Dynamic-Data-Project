import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
 import java.io.*;  
import java.sql.*;  
import javax.servlet.ServletException;  
import javax.servlet.http.*; 
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
 
@WebServlet("/uploadServlet")
@MultipartConfig(maxFileSize = 16177215)    // upload file's size up to 16MB
public class FileUploadDBServlet extends HttpServlet {
     
    // database connection settings
    
     
    protected void doPost(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException {
        // gets values of text fields
        
         String username=request.getParameter("username");
         String fn=request.getParameter("fn");
        // InputStream inputStream = null; // input stream of the upload file
         
        // obtains the upload file part in this multipart request
         String filePath = request.getParameter("file_name");
        /* if (filePart != null) {
            // prints out some information for debugging
            System.out.println(filePart.getName());
            System.out.println(filePart.getSize());
            System.out.println(filePart.getContentType()); */
             

            
            // obtains input stream of the upload file
            
        
            
        Connection conn = null; // connection to the database
        String message = "file uploaded!";  // message will be sent back to client
         
        try {
            // connects to the database
            Class.forName("com.mysql.jdbc.Driver");  
conn=DriverManager.getConnection(  
"jdbc:mysql://localhost:3306/project", "root", ""); 
 
            // constructs SQL statement
            String sql = "INSERT INTO users (fn, owner_name, file_name) values (?, ?, (LOAD_FILE(?)))";
            PreparedStatement statement = conn.prepareStatement(sql);
            statement.setString(1, fn);
            // statement.setString(2, new java.util.Date().toString());
             statement.setString(2, username);
              statement.setString(3, filePath);
                // fetches input stream of the upload file for the blob column
            //   statement.setBlob(3, inputStream);
            
 
            // sends the statement to the database server
            if(statement.execute()){
                message = "File uploaded and saved into database";
            }
        } catch (Exception ex) {
            message = "ERROR: " + ex.getMessage();
            ex.printStackTrace();
        } finally {
            if (conn != null) {
                // closes the database connection
                try {
                    conn.close();
                    
                } catch (SQLException ex) {
                    ex.printStackTrace();
                }
            }
            // sets the message in request scope
            request.setAttribute("Message", message);
             
            // forwards to the message page
            getServletContext().getRequestDispatcher("/Message.jsp").forward(request, response);
        }
    }
}