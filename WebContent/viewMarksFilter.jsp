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
<title>View Marks</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<link href="https://fonts.googleapis.com/css2?family=Fredericka+the+Great&display=swap" rel="stylesheet">	
<link href="https://fonts.googleapis.com/css2?family=Sahitya&display=swap" rel="stylesheet">	
 <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.11.2/css/all.css">	
  <style>	
  .jumbotron{	
  	background-image:url("https://images.unsplash.com/photo-1583592643761-bf2ecd0e6f84?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=749&q=80");	
  	color:white;	
  }	
 .headingNav{	
		font-family: 'Fredericka the Great', cursive;	
	}	
body{	
    background-image: url("https://images.unsplash.com/photo-1533628635777-112b2239b1c7?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80");	
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
.contjumbo{	
	background-color:transparent;	
}	
.cardForm{	
margin-top:10px;	
}	
 </style>
<body>
<%	
String name=session.getAttribute("un").toString();	
%>	
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">	
        <a class="navbar-brand" href=""><span class="headingNav">FirstBench <i class="fas fa-chalkboard-teacher"></i></span></a>	
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup"	
            aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">	
            <span class="navbar-toggler-icon"></span>	
        </button>	
        <div class="collapse navbar-collapse" id="navbarNavAltMarkup">	
            <div class="navbar-nav  ml-auto">	
            <a class="nav-item nav-link active" href=""><%=name %></a>	
                <a class="nav-item nav-link active" href="homeFac.jsp">Home <span class="sr-only">(current)</span></a>	
                <a class="nav-item nav-link" href="logout.jsp">LogOut</a>	
            </div>	
        </div>	
    </nav>	
<div class="jumbotron jumbotron-fluid">	
  <div class="container contjumbo">	
    <h1 class="display-4">View Marks</h1>	
    <p class="lead">View your marks that have been sent by your university</p>	
  </div>	
</div>
<div class="container">
	<div id="heading">
<h1>Mark List</h1>
<hr>
</div>
<div class="container contjumbo">
<div class="card border-primary mb-3 cardForm">
  <div class="card-header bg-transparent border-primary">Filter your search</div>
  <div class="card-body text-success">
    <form class="form-inline" action="viewMarksFilter.jsp">
	<select class="custom-select my-1 mr-sm-2 " id="inlineFormCustomSelectPref" name="dept">
    <option selected>Department</option>
    <option value="Arch">Architecture</option>
    <option value="BT">Biotechnology</option>
    <option value="CE">Chemical Engineering</option>
    <option value="CV">Civil Engineering</option>
    <option value="CSE">Computer Science and Engineering</option>
    <option value="ECE">Electronics and Communication Engineering</option>
    <option value="EIE">Electronics and Instrumentation Engineering</option>
    <option value="EEE">Electrical and Electronics Engineering</option>
    <option value="TC">Telecommunication Engineering</option>
    <option value="IEM">Industrial Engineering and Management</option>
    <option value="ISE">Information Science and Engineering</option>
  </select>
 <select class="custom-select my-1 mr-sm-2" id="inlineFormCustomSelectPref" name="sem">
	    		<option selected>Semester</option>
	    		<option value="1">First</option>
	    		<option value="2">Second</option>
	    		<option value="3">Third</option>
	    		<option value="4">Fourth</option>
	   			<option value="5">Fifth</option>
	    		<option value="6">Sixth</option>
	    		<option value="7">Seventh</option>
	    		<option value="8">Eighth</option>
	    		<option value="Re-reg">Re-registered</option>
	 			</select>
  </div>
  <div class="card-footer bg-transparent border-dark"><button type="submit" class="btn btn-primary mb-2">Search!</button></div>
 </form>
</div>
<table class="table">
	<thead class="thead-dark">
	<hr>
	<tr>
		<th scope="col">Semester</th>
		<th scope="col">Subject</th>
		<th scope="col">USN</th>
		<th scope="col">Internal</th>
		<th scope="col">External</th>
		<th scope="col">Total Marks</th>
	</tr>
	 </thead>
<%
String d=request.getParameter("dept");
String sem=request.getParameter("sem");
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/firstbench","root","");
Statement st=con.createStatement();
Statement st1=con.createStatement();
if(!d.equals("Department") && !sem.equals("Semester")){
	ResultSet rs1=st1.executeQuery("select USN from student where dept='"+d+"' and sem='"+sem+"'");
while(rs1.next()){
String usn=rs1.getString("USN");
ResultSet rs=st.executeQuery("select * from addmarks where hallTicket ='"+usn+"'");
if(!rs.isBeforeFirst()){
	%>
	<h1>Sorry...Nothing found here</h1>
	<%
}
while(rs.next()){
	String internal=rs.getString("internal");
	String external=rs.getString("external");
	String totalmarks=rs.getString("total marks");
	String no=rs.getString("hallTicket");
	String s=rs.getString("semester");
	String sub=rs.getString("subject");
	
%>
		<tbody>
		<tr>
		<td><%=s %></td>
		<td><%=sub %></td>
		<td><%=no %></td>
		<td><%=internal %></td>
		<td><%=external %></td>
		<td><%=totalmarks %></td>
		</tr>
		</tbody>
<%
}}}
else if(d.equals("Department")){
	ResultSet rs1=st1.executeQuery("select USN from student where sem='"+sem+"'");
	while(rs1.next()){
	String usn=rs1.getString("USN");
	ResultSet rs=st.executeQuery("select * from addmarks where `hallTicket`='"+usn+"'");
	if(!rs.isBeforeFirst()){
		%>
		<h1>Sorry...Nothing found here</h1>
		<%
	}
	while(rs.next()){
		String internal=rs.getString("internal");
		String external=rs.getString("external");
		String no=rs.getString("hallTicket");
		String totalmarks=rs.getString("total marks");
		String s=rs.getString("semester");
		String sub=rs.getString("subject");
		
	%>
			<tbody>
			<tr>
			<td><%=s %></td>
			<td><%=sub %></td>
			<td><%=no %></td>
			<td><%=internal %></td>
			<td><%=external %></td>
			<td><%=totalmarks %></td>
			</tr>
			</tbody>
	<%
	}}}
else if(sem.equals("Semester")){
	ResultSet rs1=st1.executeQuery("select USN from student where dept='"+d+"'");
	while(rs1.next()){
	String usn=rs1.getString("USN");
	ResultSet rs=st.executeQuery("select * from addmarks where `hallTicket`='"+usn+"'");
	if(!rs.isBeforeFirst()){
		%>
		<tbody>
			<tr>
		<td>Sorry...Nothing found here</td>
		</tr>
			</tbody>
		<%
	}
	while(rs.next()){
		String internal=rs.getString("internal");
		String external=rs.getString("external");
		String totalmarks=rs.getString("total marks");
		String no=rs.getString("hallTicket");
		String s=rs.getString("semester");
		String sub=rs.getString("subject");
		
	%>
			<tbody>
			<tr>
			<td><%=s %></td>
			<td><%=sub %></td>
			<td><%=no %></td>
			<td><%=internal %></td>
			<td><%=external %></td>
			<td><%=totalmarks %></td>
			</tr>
			</tbody>
	<%
	}}}
%>
</table>
</div>
</div>
<div class="footer text-center py-3">
    <span class="headingNav">FirstBench<i class="fas fa-chalkboard-teacher"></i> 2020</span>
      </div>
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</body>
</html>