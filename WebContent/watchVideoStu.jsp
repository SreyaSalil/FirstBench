<%@page import="java.util.ArrayList"%>
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
<title>Watch Video</title>
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
	String n=request.getParameter("name");
	String fname=(String)session.getAttribute("un");
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/firstbench","root","");
	Statement st=con.createStatement();
	ArrayList<String> fac = new ArrayList<>();
	ResultSet rs2=st.executeQuery("select name from faculty");
	while(rs2.next()){
		String element=rs2.getString("name");
		if (!fac.contains(element)) { 
			  
            fac.add(element); 
        } 
	}
	ResultSet rs=st.executeQuery("select * from videos where title='"+n+"' ");
	if(rs.next()) {
		String file=rs.getString("video");
		String title=rs.getString("title");
		String desc=rs.getString("description");
		String sub=rs.getString("subject");
		String dept=rs.getString("dept");
		String filename="./uploadedFiles/"+file;
%>
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
	<div class="card mb-3 ">
		<video controls width="1200" height=900 class="card-img-top embed-responsive embed-responsive-16by9">
  			<source src="<%=filename %>" type="video/mp4">
		</video>
  <div class="card-body">
    <h5 class="card-title"><%=title %></h5>
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
  </div>
</div>

<% } 
	String name=rs.getString("name");
%>
<div class="container-fluid">
			<div class="panel-primary">
				<div class="panel-heading">
					<h1 class="panel-title">Comments and Doubts</h1>
				</div>
				<div class="panel-body">
					<input type="hidden" id="username" name="username" value="<%=fname%>">
					<input type="hidden" id="to" name="to" value="<%=name%>">
					<div class="clearfix"></div>
					<div class="form-group col-md-12">
						<label>Topic:</label>
						<input class ="form-control" type="text" name="topic" id="topic" required="required">
					</div>
					<div class="clearfix"></div>

					<div class="form-group col-md-12">
						<label>Comment:</label>
						<textarea class="form-control" rows="8" id="comment" required="required"></textarea>
					</div>
					<div class="clearfix"></div>
					<div class="form-group col-md-6">
						<button class="btn btn-primary" type="button" onclick="loadAjax()">POST</button>
					</div>
					<input type="hidden" id="heading" name="heading" value="<%=n%>">
				</div>
			</div>
			<p id="print"></p>
		</div>
		<%
			ResultSet rs1=st.executeQuery("select * from comments where heading='"+n+"' ");
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
  			</div>
			</div>
		
		<%
				}
		else if(fac.contains(user)){
			%>
			<div class="card text-white bg-info mb-3">
  			<div class="card-header"><%=user %> says to <%=to %>:</div>
  			<div class="card-body">
    		<h5 class="card-title"><%=topic %></h5>
    		<p class="card-text"><%=com %></p>
  			</div>
			</div>
		<%
				}
				else{%>
					<div class="card text-white bg-secondary mb-3" >
  					<div class="card-header"><%=user %> says:</div>
  					<div class="card-body">
    				<h5 class="card-title"><%=topic %></h5>
    				<p class="card-text"><%=com %></p>
  					</div>
					</div>
			<%	
			}
			}
		%>
		</div>
						<div class="footer text-center py-3">	
    <span class="headingNav">FirstBench<i class="fas fa-chalkboard-teacher"></i> 2020</span>	
      </div>
		<script src="js/jquery.min.js"></script>
		<script src="js/bootstrap.js"></script>
		<script type="text/javascript">

		function loadAjax(){
			var username= document.getElementById("username").value;
			var to= document.getElementById("to").value;
			var topic= document.getElementById("topic").value;
			var comment= document.getElementById("comment").value;
			var heading= document.getElementById("heading").value;
			if(username.trim() =="" || to.trim()=="" || topic.trim() =="" || comment.trim()==""|| heading.trim()==""){
			alert("All fields are Required");
			return false;
			}

			
			var url="ajaxRequestPage.jsp?username="+username +"&to="+to+"&topic="+topic +"&comment="+comment+"&heading="+heading;



			if(window.XMLHttpRequest){
				
				request = new XMLHttpRequest();
				
			}else if(window.ActiveXObject){
				
				request = new ActiveXObject("Microsoft.XMLHTTP");
			}			
			try{
				request.onreadystatechange=sendInfo;
				request.open("POST",url,true);
				request.send();
				
			}catch(e){
			document.write(e);
			}			
		}

		function sendInfo(){
			var p =		document.getElementById("print");

			if(request.readyState ==1){
				var text = request.responseText;
				p.innerHTML="Please Wait...";
				console.log("1");
			}

			if(request.readyState ==2){
				var text = request.responseText;
				console.log("2");				
			}
			if(request.readyState ==3){
				var text = request.responseText;
				console.log("3");				
			}
			if(request.readyState ==4){
				var text = request.responseText;
				p.innerHTML=" Your Comment has been Posted  ";
			}
		}
		</script>
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</body>
</html>