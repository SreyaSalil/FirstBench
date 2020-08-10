<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View Doubts</title>
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
    <h1 class="display-4">View Doubts</h1>
    <p class="lead">View all the doubts you have asked and hopefully they would have been solved by the faculty.</p>
  </div>
</div>
<div class="container">
<div id="heading">
<h1>Replies</h1>
<hr>
</div>

<%
	String n=request.getParameter("name");
	String fname=(String)session.getAttribute("un");
	ArrayList<String> heads = new ArrayList<>(); 
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/firstbench","root","");
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select heading from comments");
	while(rs.next()){
		String element=rs.getString("heading");
		if (!heads.contains(element)) { 
			  
            heads.add(element); 
        } 
	}
	for(String head:heads) {
		ResultSet rs1=st.executeQuery("select * from comments where heading='"+head+"' ");
		if(rs1.isBeforeFirst()){
		%>
		<h3>Replies in '<%=head %>'</h3>
		<%
		while(rs1.next()) {
			
			String user=rs1.getString("username");
			String to=rs1.getString("to");
			String topic=rs1.getString("topic");
			String com=rs1.getString("comment");
			if(to.equals(fname) || to.equals("All")){
			
		%>
			<div class="card text-white bg-secondary mb-3">
  			<div class="card-header"><%=user %> says:</div>
  			<div class="card-body">
    		<h5 class="card-title"><%=topic %></h5>
    		<p class="card-text"><%=com %></p>
    		<a href="watchVideoStu.jsp?name=<%=head %>" class="btn btn-success">View Reply</a>
  			</div>
			</div>
		
		<%
			}
		}
	}
	}
%>
<div id="heading">
<h1>Doubts asked</h1>	
<hr>
</div>
<%
	for(String head:heads) {
		ResultSet rs1=st.executeQuery("select * from comments where heading='"+head+"' ");
		if(rs1.isBeforeFirst()){
		%>
		<h3>Doubts asked in '<%=head %>'</h3>
		<%
		while(rs1.next()) {
			
			String user=rs1.getString("username");
			String to=rs1.getString("to");
			String topic=rs1.getString("topic");
			String com=rs1.getString("comment");
			if(user.equals(fname)){
			
		%>
			<div class="card text-white bg-danger mb-3">
  			<div class="card-header"><%=user %> says:</div>
  			<div class="card-body">
    		<h5 class="card-title"><%=topic %></h5>
    		<p class="card-text"><%=com %></p>
    		<a href="watchVideoStu.jsp?name=<%=head %>" class="btn btn-success">View Doubt</a>
  			</div>
			</div>
		
		<%
			}
		}
	}
	}
%>	
</div>
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</body>
</html>