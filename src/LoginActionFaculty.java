

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

public class LoginActionFaculty extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public LoginActionFaculty() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name=request.getParameter("uname");
		String pwd=request.getParameter("pwd");
		HttpSession session=request.getSession();
			try {
				Class.forName("com.mysql.jdbc.Driver");
				Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/firstbench","root","");
				Statement st=con.createStatement();
				
				ResultSet rs=st.executeQuery("select * from faculty where name='"+name+"' and password='"+pwd+"'");
				if(rs.next()) {
					String status=rs.getString("status");
					if(status.equals("A")) {
						session.setAttribute("un", name);
						session.setAttribute("dept", rs.getString("dept"));
						session.setAttribute("status", "faculty");
						response.sendRedirect("homeFac.jsp");
					}
					else if(status.equals("P")){
						response.sendRedirect("loginFac.jsp?status=P");
					}
					else {
						response.sendRedirect("loginFac.jsp?status=R");
					}
				}
				else {
					response.sendRedirect("loginFac.jsp?status=N");
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


