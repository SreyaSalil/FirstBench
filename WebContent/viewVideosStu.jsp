<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View Videos</title>
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
</head>
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
    <h1 class="display-4">View Videos</h1>
    <p class="lead">View all the videos that have been uploaded. Use the filters below to narrow your search</p>
  </div>
</div>
<div class="container">
<div class="card border-primary mb-3 cardForm">
  <div class="card-header bg-transparent border-primary">Filter your search</div>
  <div class="card-body text-success">
    <form class="form-inline" action="filterStu.jsp">
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
<%
try {
	 String fname=(String)session.getAttribute("un");
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/firstbench","root","");
	Statement st=con.createStatement();
	
	ResultSet rs=st.executeQuery("select * from videos");
	while(rs.next()) {
		String file=rs.getString("video");
		String title=rs.getString("title");
		String desc=rs.getString("description");
		String sub=rs.getString("subject");
		String dept=rs.getString("dept");
		String filename="./uploadedFiles/"+file;
		System.out.println(file);
		System.out.println(filename);
		%>
			
			<div class="card">
  				<div class="card-header">
    				<h3><%=title %></h3>
  				</div>
  			<div class="card-body">
  			<div class="row">
  				<div class="col-md-4">
					<video controls width="320" height="240">
  						<source src="<%=filename %>" type="video/mp4">
					</video>
				</div>
				<div class="col-md-8">
    				<h5 class="card-title"><%=desc %></h5>
    				
    				<div class="row">
    				<p class="card-text">
    					<div class="col-md-4">
    						Uploaded by: <%=fname %>
    					</div>
    					<div class="col-md-4">
    						Subject: <%=sub %>
    					</div>
    					<div class="col-md-4">
    						Department: <%=dept %>
    					</div>
    				</p>
    				
    				</div>
    				<div>
    					<br>
    					<a href="watchVideoStu.jsp?name=<%=title %>" class="btn btn-primary">Watch Video</a>
    				</div>
 				 </div>
			</div>
			</div>
		</div>
		<% 
		
		
	}
}catch (Exception e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
}
%>
</div>
	<div class="footer text-center py-3">
    <span class="headingNav">FirstBench<i class="fas fa-chalkboard-teacher"></i> 2020</span>
      </div>
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</body>
</html>