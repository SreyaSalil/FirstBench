<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import ="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>AJAX REQUEST</title>
	<link rel="stylesheet" href="css/bootstrap.css">
	</head>
	<body>
		<div class="container-fluid">
			<%
				String username =request.getParameter("username");
				String to =request.getParameter("to");
				String topic =request.getParameter("topic");
				String comment =request.getParameter("comment");
				String heading =request.getParameter("heading");
			%>
			<div class="panel-primary">
				<div class="panel-heading">
					<h4 class="panel-title">COMMENTS</h4>
				</div>
				<div class="panel-body">
					<%
					String message="";
					try {			
						Class.forName("com.mysql.jdbc.Driver");
						Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/firstbench","root","");	
						PreparedStatement ps = con.prepareStatement("INSERT INTO comments VALUES(?,?,?,?,?);");
						ps.setString(1, username);
						ps.setString(2, to);
						ps.setString(3, topic);
						ps.setString(4, comment);
						ps.setString(5, heading);
						ps.executeUpdate();
						%>
						</strong>
						<%con.close();
					}catch (Exception e) {
						System.out.println(e);		
					}
					%>
				</div>
			</div>
		</div>
		<script src="js/jquery-3.1.1.min.js"></script>
		<script src="js/bootstrap.js"></script>
	</body>
</html>
