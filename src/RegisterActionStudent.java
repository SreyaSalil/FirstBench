

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mysql.jdbc.Statement;

public class RegisterActionStudent extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public RegisterActionStudent() {
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String usn=request.getParameter("usn");
		String name=request.getParameter("uname");
		String password=request.getParameter("pwd");
		String email=request.getParameter("email");
		String mob=request.getParameter("phn");
		String address=request.getParameter("addr");
		String dept=request.getParameter("dept");
		String sem=request.getParameter("sem");
		String college=request.getParameter("college");
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/firstbench","root","");
			java.sql.Statement st=con.createStatement();
			int i=st.executeUpdate("insert into student values('"+usn+"','"+name+"','"+password+"','"+email+"','"+mob+"','"+address+"','"+dept+"','"+sem+"','"+college+"','P')");
			if(i>0) {
				response.sendRedirect("loginStu.jsp?status=B");
//				System.out.println("Registered");
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
