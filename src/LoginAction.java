

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LoginAction extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public LoginAction() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name=request.getParameter("uname");
		String pwd=request.getParameter("pwd");
		HttpSession session=request.getSession();
		session.setAttribute("nkey",name);
		if(name.equals("admin") && pwd.equals("admin")) {
			response.sendRedirect("adminhome.jsp");
		}
		else {
			try {
				Class.forName("com.mysql.jdbc.Driver");
				Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/firstbench","root","");
				Statement st=con.createStatement();
				
				ResultSet rs=st.executeQuery("select * from student where name='"+name+"' and password='"+pwd+"'");
				if(rs.next()) {
					String status=rs.getString("status");
					if(status.equals("A")) {
						response.sendRedirect("home.jsp");
					}
					else if(status.equals("P")){
						response.sendRedirect("login.jsp?status=P");
					}
					else {
						response.sendRedirect("login.jsp?status=R");
					}
				}
				else {
					ResultSet rs2=st.executeQuery("select * from faculty where name='"+name+"' and password='"+pwd+"'");
					if(rs2.next()) {
						String status=rs2.getString("status");
						if(status.equals("A")) {
							session.setAttribute("un", name);
							session.setAttribute("dept", rs2.getString("dept"));
							response.sendRedirect("facHome.jsp?name="+name);
						}
						else if(status.equals("P")){
							response.sendRedirect("login.jsp?status=P");
						}
						else if(status.equals("R")){
							response.sendRedirect("login.jsp?status=R");
						}
						else {
							response.sendRedirect("login.jsp?status=N");
						}
					}
				}
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		
	}

}
