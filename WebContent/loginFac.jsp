<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Faculty Login</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<link href="https://fonts.googleapis.com/css2?family=Fredericka+the+Great&display=swap" rel="stylesheet">
 <link href="https://fonts.googleapis.com/css2?family=Prata&display=swap" rel="stylesheet">
 <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.11.2/css/all.css">
  <style>
 .headingNav{
		font-family: 'Fredericka the Great', cursive;
	}
#heading{
	margin-top:10px;
	    padding-top: 20px;
	text-align:center;
	font-family: 'Prata', serif;

}
hr{
    border: 0;
    height: 1px;
    background-image: linear-gradient(to right, rgba(0, 0, 0, 0), rgba(0, 0, 0, 0.75), rgba(0, 0, 0, 0));
}
.container{
	background-color:rgba(255, 255, 255, 0.9);
	padding-bottom: 20px;
	border-radius:10px;
	margin-top:5%;
}
body{
    background-image: url("https://images.unsplash.com/photo-1580582932707-520aed937b7b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=889&q=80");
    background-size: 100%;
}
 </style>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <a class="navbar-brand" href="index.jsp"><span class="headingNav">FirstBench <i class="fas fa-chalkboard-teacher"></i></span></a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup"
            aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
            <div class="navbar-nav  ml-auto">
                <a class="nav-item nav-link" href="index.jsp">Home <span class="sr-only">(current)</span></a>
                <a class="nav-item nav-link" href="indexFac.jsp">Go Back</a>
                <a class="nav-item nav-link active" href="logReg.jsp">Login / Register</a>
                <a class="nav-item nav-link" href="contactUs.jsp">Contact Us</a>
            </div>
        </div>
    </nav>
<div class="container">
<div id="heading">
<h1>Faculty Login</h1>
<hr>
</div>
<form action="LoginActionFaculty">
<div class="form-group">
    <label for="fname">Name</label>
    <input type="text" id="fname" name="uname" class="form-control" aria-describedby="emailHelp" placeholder="Enter your name">
  </div>
  <div class="form-group">
   <label for="fpass">Password:</label>
    <input type="password" id="fpass" name="pwd" class="form-control" aria-describedby="emailHelp" placeholder="Enter the password">
  </div>
<button type="submit" class="btn btn-primary">Submit</button>
<%
	String st=request.getParameter("status");
	if(st.equals("P")){
		%>
		<h4 id="pending">Your account must be accepted by the admin</h4>
<%
	}
	else if(st.equals("R")){
		%>
		<h4 id="reject">Your account has been rejected</h4>
		<%
		
	}
	else if(st.equals("N")){
	 %>
	 <h4 id="nfound">Account Not found</h4>
	<%	
	}
%>
</form>
</div>

<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</body>
</html>