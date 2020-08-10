<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
 pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Upload Video</title>
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
String n=session.getAttribute("un").toString();
%>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <a class="navbar-brand" href=""><span class="headingNav">FirstBench <i class="fas fa-chalkboard-teacher"></i></span></a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup"
            aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
            <div class="navbar-nav  ml-auto">
            <a class="nav-item nav-link active" href=""><%=n %></a>
                <a class="nav-item nav-link active" href="homeFac.jsp">Home <span class="sr-only">(current)</span></a>
                <a class="nav-item nav-link" href="logout.jsp">LogOut</a>
            </div>
        </div>
    </nav>
<div class="jumbotron jumbotron-fluid">
  <div class="container contjumbo">
    <h1 class="display-4">Upload Videos</h1>
    <p class="lead">Upload videos for your students to study and revise from</p>
  </div>
</div>
 <div class="container col-lg-6">
  <h1 class="text-center" id="heading">Upload Video!</h1>
  <hr>
  <div class="card">
   <div class="card-body">
    <form method="post" class="form-group" action="uploadServlet"
     enctype="multipart/form-data">
     <div class="form-group">
      <label for="title">Title: </label> 
      <input type="text" class="form-control" name="title" size="50" />
     </div>
     <div class="form-group">
      <label for="des">Description: </label> 
      <input type="text" class="form-control" name="des" size="50" />
     </div>
     <div class="form-group">
      <label for="des">Subject: </label> 
      <input type="text" class="form-control" name="sub" size="50" />
     </div>
	<%
		String name=request.getParameter("name");
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/firstbench","root","");
		Statement st=con.createStatement();
		ResultSet rs=st.executeQuery("select dept from faculty where name='"+name+"'");
		if(rs.next()){
			String d=rs.getString("dept");
	%>
	 <input type="hidden" id="custId" name="dept" value="<%=d %>">
	  <input type="hidden" id="custId" name="name" value="<%=name%>">
	<%
		}
	%>
	
  <label>Semester:</label>
  <div class="form-check form-check-inline">
  <input class="form-check-input" type="radio" name="sem" id="inlineRadio1" value="1">
  <label class="form-check-label" for="inlineRadio1">1</label>
</div>
<div class="form-check form-check-inline">
  <input class="form-check-input" type="radio" name="sem" id="inlineRadio2" value="2">
  <label class="form-check-label" for="inlineRadio2">2</label>
</div>
<div class="form-check form-check-inline">
  <input class="form-check-input" type="radio" name="sem" id="inlineRadio3" value="3">
  <label class="form-check-label" for="inlineRadio3">3</label>
</div>
<div class="form-check form-check-inline">
  <input class="form-check-input" type="radio" name="sem" id="inlineRadio4" value="4">
  <label class="form-check-label" for="inlineRadio4">4</label>
</div>
  <div class="form-check form-check-inline">
  <input class="form-check-input" type="radio" name="sem" id="inlineRadio5" value="5">
  <label class="form-check-label" for="inlineRadio5">5</label>
</div>
<div class="form-check form-check-inline">
  <input class="form-check-input" type="radio" name="sem" id="inlineRadio6" value="6">
  <label class="form-check-label" for="inlineRadio6">6</label>
</div>
<div class="form-check form-check-inline">
  <input class="form-check-input" type="radio" name="sem" id="inlineRadio7" value="7">
  <label class="form-check-label" for="inlineRadio7">7</label>
</div>
<div class="form-check form-check-inline">
  <input class="form-check-input" type="radio" name="sem" id="inlineRadio8" value="8">
  <label class="form-check-label" for="inlineRadio8">8</label>
</div>
<div class="form-check form-check-inline">
  <input class="form-check-input" type="radio" name="sem" id="inlineRadioReReg" value="Re-reg">
  <label class="form-check-label" for="inlineRadioReReg">Re-registered</label>
</div>
     <!-- <div class="form-group">
      <label for="video">Video:</label> 
      <input type="file" name="video" size="50" />
     </div> -->
     <input type="submit" value="Save" class="btn btn-success">
    </form>
   </div>
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