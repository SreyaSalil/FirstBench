<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View Notes</title>
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
.jumbotron{
	background-image:url("https://images.unsplash.com/photo-1560355206-7bdbaa06ea8c?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60");
	color:white;
}
.footer{
    color: white;
    background-color:#65462A;
    margin-top: 5%;
}
.buttons{
	margin-top:10px;
}
 </style>

</head>
<body>
<%
String name=session.getAttribute("un").toString();
%>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <a class="navbar-brand" href="homeFac.jsp"><span class="headingNav">FirstBench <i class="fas fa-chalkboard-teacher"></i></span></a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup"
            aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
            <div class="navbar-nav  ml-auto">
            	<a class="nav-item nav-link active" href=""><%=name %></a>
                <a class="nav-item nav-link active" href="">Home <span class="sr-only">(current)</span></a>
                <a class="nav-item nav-link" href="logout.jsp">LogOut</a>
            </div>
        </div>
    </nav>
    
<div class="jumbotron jumbotron-fluid">
  <div class="container">
    <h1 class="display-4">View Notes</h1>
    <p class="lead">View the text files which you have uploaded.</p>
  </div>
</div>
<div class="container contjumbo">
<div class="card border-primary mb-3 cardForm">
  <div class="card-header bg-transparent border-primary">Filter your search</div>
  <div class="card-body text-success">
    <form class="form-inline" action="filterNotes.jsp">
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
<div class="container">
        <div class="row">
<%
try {
	 String fname=(String)session.getAttribute("un");
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/firstbench","root","");
	Statement st=con.createStatement();
	
	ResultSet rs=st.executeQuery("select * from notes");
	while(rs.next()) {
		String file=rs.getString("notes");
		String sub=rs.getString("subject");
		String dept=rs.getString("dept");
		String n=rs.getString("name");
		String filename="./uploadedFiles/"+file;
		System.out.println(file);
		System.out.println(filename);
		%>
			
			

            <div class="col-md-4 h-100">
                <div class="card" style="width: 18rem;">
                    <img class="card-img-top"
                        src="https://www.pngitem.com/pimgs/m/72-727492_pencil-and-paper-rentre-scolaire-clipart-notebook-clip.png"
                        alt="Card image cap">
                    <div class="card-body">
                        <h5 class="card-title"><%=file %></h5>
                       		<b>Uploaded by:</b> <%=n %><br>
                       		<b>Subject:</b> <%=sub %><br>
                       		<b>Department:</b> <%=dept %>
                       		<br>
                       		<div class="buttons">
                       			<a href="<%=filename %>" download><button type="button" class="btn btn-primary">Download</button></a>
                            	<a href="<%=filename %>" target="_blank"><button type="button" class="btn btn-primary">View</button></a>
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
  </div>
  <br>
</div>
<div class="footer text-center py-3">
    <span class="headingNav">FirstBench<i class="fas fa-chalkboard-teacher"></i> 2020</span>
      </div>
</body>
</html>