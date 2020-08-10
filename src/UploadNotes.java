import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
 
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;
 
@WebServlet("/UploadNotes")
@MultipartConfig(maxFileSize = 1048576000)    // upload file's size up to 16MB
public class UploadNotes extends HttpServlet {
     
    // database connection settings
    private String dbURL = "jdbc:mysql://localhost:3306/firstbench";
    private String dbUser = "root";
    private String dbPass = "";
     
    protected void doPost(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException {
        // gets values of text fields
    	HttpSession session=request.getSession();
        String title = request.getParameter("title");
        String desc = request.getParameter("des");
        String sub = request.getParameter("sub");
        String name=(String)session.getAttribute("un");
        String dept=(String)session.getAttribute("dept");
        String sem=request.getParameter("sem");
        InputStream inputStream = null; // input stream of the upload file
         
        // obtains the upload file part in this multipart request
        Part filePart = request.getPart("img");
        if (filePart != null) {
          
            // obtains input stream of the upload file
            inputStream = filePart.getInputStream();
        }
         
        Connection conn = null; // connection to the database
        String message = null;  // message will be sent back to client
         
        try {
            // connects to the database
            DriverManager.registerDriver(new com.mysql.jdbc.Driver());
            conn = DriverManager.getConnection(dbURL, dbUser, dbPass);
 
            // constructs SQL statement
            String sql = "INSERT INTO notes values (?, ?, ?, ?, ?, ?, ?)";
            PreparedStatement statement = conn.prepareStatement(sql);
            statement.setString(1, title);
            statement.setString(2, desc);
            statement.setString(3, sub);
            statement.setString(4, name);
            statement.setString(5, dept);
            statement.setString(6, sem);
            statement.setString(7, "pending");
			/*
			 * if (inputStream != null) { // fetches input stream of the upload file for the
			 * blob column statement.setBlob(6, inputStream); }
			 */
 
            // sends the statement to the database server
            int row = statement.executeUpdate();
            if (row > 0) {
            	
            	response.sendRedirect("upload2.jsp");
                message = "File uploaded and saved into database";
            }
        } catch (SQLException ex) {
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
			/*
			 * getServletContext().getRequestDispatcher("/videoMessage.jsp").forward(
			 * request, response);
			 */  }
    }
}