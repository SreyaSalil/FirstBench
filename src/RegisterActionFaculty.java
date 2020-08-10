

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mysql.jdbc.Statement;

public class RegisterActionFaculty extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public RegisterActionFaculty() {
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name=request.getParameter("uname");
		String pos=request.getParameter("pos");
		String password=request.getParameter("pwd");
		String email=request.getParameter("email");
		String mob=request.getParameter("phn");
		String address=request.getParameter("addr");
		String dept=request.getParameter("dept");
		String college=request.getParameter("college");
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/firstbench","root","");
			java.sql.Statement st=con.createStatement();
			int i=st.executeUpdate("insert into faculty values('"+name+"','"+pos+"','"+password+"','"+email+"','"+mob+"','"+address+"','"+dept+"','"+college+"','P')");
			if(i>0) {
				response.sendRedirect("loginFac.jsp?status=B");
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
