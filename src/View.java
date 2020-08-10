import java.io.IOException;
import java.sql.DriverManager;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mysql.jdbc.Connection;

/**
 * Servlet implementation class ViewImage
 */
public class View extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public View() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        final String JDBC_DRIVER = "com.mysql.jdbc.Driver";
        final String DB_URL = "jdbc:mysql://localhost:3306/firstbench";
        final String User = "root";
        final String Password = "";
        try {
            Class.forName(JDBC_DRIVER);
          java.sql.  Connection conn = DriverManager.getConnection(DB_URL, User, Password);

           java.sql. PreparedStatement stmt = conn.prepareStatement("select * from videos");
            //stmt.setLong(1, Long.valueOf(request.getParameter("id")));
           java.sql. ResultSet rs = stmt.executeQuery();
            if (rs.next()) {
                response.getOutputStream().write(rs.getBytes("video"));
            }
            conn.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}