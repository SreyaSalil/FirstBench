<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View all Users</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<link href="https://fonts.googleapis.com/css2?family=Fredericka+the+Great&display=swap" rel="stylesheet">
 <link href="https://fonts.googleapis.com/css2?family=Prata&display=swap" rel="stylesheet">
 <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.11.2/css/all.css">
 <style>
 .headingNav{
		font-family: 'Fredericka the Great', cursive;
	}
body{
    background-image: url("https://images.unsplash.com/photo-1559173525-d16dfd7c17fe?ixlib=rb-1.2.1&auto=format&fit=crop&w=667&q=80");
    background-size: 100%;
}
.footer{
    color: white;
    background-color:#65462A;
    margin-top: 5%;
}
.container{
	background-color:rgba(255, 255, 255, 0.9);
	padding-bottom: 20px;
	border-radius:10px;
	margin-top:5%;
}

td{
	word-break:break-all;
}

#heading{
	margin-top:10px;
	    padding-top: 20px;
	text-align:center;
	font-family: 'Prata', serif;

}
hr{
    overflow: visible; /* For IE */
    padding: 0;
    border: none;
    border-top: medium double #333;
    color: #333;
    text-align: center;
}
 </style>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <a class="navbar-brand" href=""><span class="headingNav">FirstBench <i class="fas fa-chalkboard-teacher"></i></span></a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup"
            aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
            <div class="navbar-nav  ml-auto">
            <a class="nav-item nav-link active" href="">Admin</a>
                <a class="nav-item nav-link active" href="adminhome.jsp">Home <span class="sr-only">(current)</span></a>
                <a class="nav-item nav-link" href="logout.jsp">LogOut</a>
            </div>
        </div>
    </nav>
<div class="container">
<div id="heading">
<h1>Students</h1>
<hr>
</div>
<table class="table">
	<thead class="thead-dark">
	<tr>
		<th scope="col">USN</th>
		<th scope="col">Name</th>
		<th scope="col">Password</th>
		<th scope="col">Email</th>
		<th scope="col">Phone</th>
		<th scope="col">Address</th>
		<th scope="col">Department</th>
		<th scope="col">Semester</th>
		<th scope="col">College</th>
		<th scope="col">Status</th>
		<th scope="col" colspan="2">Accept/Reject</th>
	</tr>
	 </thead>
<%
String name= session.getAttribute("un").toString();
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/firstbench","root","");
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from student");
while(rs.next()){
	String u=rs.getString("USN");
	String n=rs.getString("name");
	String p=rs.getString("password");
	String e=rs.getString("email");
	String m=rs.getString("mobile");
	String adr=rs.getString("address");
	String dept=rs.getString("dept");
	String sem=rs.getString("sem");
	String college=rs.getString("college");
	String s=rs.getString("status");
	
%>
	<tbody>
	<tr>
		<td><%=u %></td>
		<td><%=n %></td>
		<td><%=p %></td>
		<td><%=e %></td>
		<td><%=m %></td>
		<td><%=adr %></td>
		<td><%=dept %></td>
		<td><%=sem %></td>
		<td><%=college %></td>
		<td><%=s %></td>
		<td><a href="accept.jsp?name=<%=n%>"><button type="button" class="btn btn-success">Accept</button></a></td>
		<td><a href="reject.jsp?name=<%=n%>"><button type="button" class="btn btn-danger">Reject</button></a></td>
	</tr>
	</tbody>
	
<%
}
%>
</table>
<br>
<div id="heading">
<h1>Faculty</h1>
<hr>
</div>
<table class="table">
	<thead class="thead-dark">
	<tr>
		<th scope="col">Name</th>
		<th scope="col">Position</th>
		<th scope="col">Password</th>
		<th scope="col">Email</th>
		<th scope="col">Phone</th>
		<th scope="col">Address</th>
		<th scope="col">Department</th>
		<th scope="col">College</th>
		<th scope="col">Status</th>
		<th scope="col" colspan="2">Accept/Reject</th>
	</tr>
	 </thead>
<%
ResultSet rs2=st.executeQuery("select * from faculty");
while(rs2.next()){
	String n=rs2.getString("name");
	String pos=rs2.getString("position");
	String p=rs2.getString("password");
	String e=rs2.getString("email");
	String m=rs2.getString("mobile");
	String adr=rs2.getString("address");
	String dept=rs2.getString("dept");
	String college=rs2.getString("college");
	String s=rs2.getString("status");
	
%>
	<tbody>
	<tr>
		<td><%=n %></td>
		<td><%=pos %></td>
		<td><%=p %></td>
		<td><%=e %></td>
		<td><%=m %></td>
		<td><%=adr %></td>
		<td><%=dept %></td>
		<td><%=college %></td>
		<td><%=s %></td>
		<td><a href="acceptFac.jsp?name=<%=n%>"><button type="button" class="btn btn-success">Accept</button></a></td>
		<td><a href="rejectFac.jsp?name=<%=n%>"><button type="button" class="btn btn-danger">Reject</button></a></td>
	</tr>
	</tbody>
	
<%
}
%>
</table>
<a href="adminhome.jsp"><button type="button" class="btn btn-dark">Go Back</button></a>
</div>
        <div class="footer text-center py-3">
    <span class="headingNav">FirstBench<i class="fas fa-chalkboard-teacher"></i> 2020</span>
      </div>
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</body>
</html>