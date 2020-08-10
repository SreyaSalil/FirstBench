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

public class LoginActionAdmin extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public LoginActionAdmin() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name=request.getParameter("uname");
		String pwd=request.getParameter("pwd");
		HttpSession session=request.getSession();
		
			try {
				if(name.equals("admin") && pwd.equals("admin")) {
					session.setAttribute("un",name);
					response.sendRedirect("adminhome.jsp");
				}
				else {
					response.sendRedirect("loginAdmin.jsp?status=N");
				}
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		
	}


