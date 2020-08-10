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

<title>Your Profile</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<link href="https://fonts.googleapis.com/css2?family=Fredericka+the+Great&display=swap" rel="stylesheet">
 <link href="https://fonts.googleapis.com/css2?family=Prata&display=swap" rel="stylesheet">
 <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.11.2/css/all.css">
 <style>
 .headingNav{
		font-family: 'Fredericka the Great', cursive;
	}
body{
    background-image: url("https://images.unsplash.com/photo-1533628635777-112b2239b1c7?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80");
    background-size: 100%;
}
.jumbotron{
	background-image:url("https://images.unsplash.com/photo-1560355206-7bdbaa06ea8c?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60");
	color:white;
}
.footer{
    color: white;
    background-color:#65462A;
    margin-top: 5%;
}
#heading{
	margin-top:10px;
	    padding-top: 20px;
	text-align:center;
	font-family: 'Sahitya', serif;

}
hr {
    overflow: visible; /* For IE */
    height: 30px;
    border-style: solid;
    border-color: black;
    border-width: 1px 0 0 0;
    border-radius: 20px;
}
hr:before { /* Not really supposed to work, but does */
    display: block;
    content: "";
    height: 30px;
    margin-top: -31px;
    border-style: solid;
    border-color: black;
    border-width: 0 0 1px 0;
    border-radius: 20px;
}
 </style>
</head>
<body>
<%
String user=session.getAttribute("un").toString();
%>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <a class="navbar-brand" href=""><span class="headingNav">FirstBench <i class="fas fa-chalkboard-teacher"></i></span></a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup"
            aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
            <div class="navbar-nav  ml-auto">
            <a class="nav-item nav-link active" href=""><%=user %></a>
                <a class="nav-item nav-link active" href="homeFac.jsp">Home <span class="sr-only">(current)</span></a>
                <a class="nav-item nav-link" href="logout.jsp">LogOut</a>
            </div>
        </div>
    </nav>

    <div class="jumbotron jumbotron-fluid">
  <div class="container">
    <h1 class="display-4">Welcome <%=user %>!</h1>
  </div>
</div>
<div class="container">
<h1 id="heading">View Your Profile</h1>
<hr>
<%
String name= session.getAttribute("un").toString();
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/firstbench","root","");
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from student where name='"+name+"'");
if(rs.next()){
	String usn=rs.getString("usn");
	String n=rs.getString("name");
	String p=rs.getString("password");
	String e=rs.getString("email");
	String m=rs.getString("mobile");
	String adr=rs.getString("address");
	String d=rs.getString("dept");
	String s=rs.getString("sem");
	String c=rs.getString("college");
	
	%>
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
	</tr>
	</thead>
	<tbody>
	<tr>
		<td><%=usn %></td>
		<td><%=n %></td>
		<td><%=p %></td>
		<td><%=e %></td>
		<td><%=m %></td>
		<td><%=adr %></td>
		<td><%=d %></td>
		<td><%=s %></td>
		<td><%=c %></td>
	</tr>
	</tbody>
	</table>
	
	<%
}
%>
</div>
<div class="footer text-center py-3">
    <span class="headingNav">FirstBench<i class="fas fa-chalkboard-teacher"></i> 2020</span>
      </div>
</body>
</html>