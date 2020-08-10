<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student HomePage</title>
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
                <a class="nav-item nav-link active" href="homeStu.jsp">Home <span class="sr-only">(current)</span></a>
                <a class="nav-item nav-link" href="logout.jsp">LogOut</a>
            </div>
        </div>
    </nav>
    <div class="jumbotron jumbotron-fluid">
  <div class="container">
    <h1 class="display-4">Welcome <%=name %>!</h1>
  </div>
</div>
<div class="container">
        <div class="row">
            <div class="col-md-4 h-100">
                <div class="card" style="width: 18rem;">
                    <img class="card-img-top"
                        src="https://i1.wp.com/detechter.com/wp-content/uploads/2017/04/profile-photos-600x425.jpg?resize=600%2C425&ssl=1"
                        alt="Card image cap">
                    <div class="card-body">
                        <h5 class="card-title">View Profile</h5>
                        <p class="card-text">View your personal details and contact admin if there are any changes to be done.</p>
                            <a href="viewprofile.jsp"><button type="button" class="btn btn-primary">Add</button></a>
                    </div>
                </div>
            </div>
            <div class="col-md-4 h-100">
                <div class="card" style="width: 18rem;">
                    <img class="card-img-top"
                        src="https://about.fb.com/wp-content/uploads/2016/10/casting_newsroomasset_blue1.png?fit=1911%2C1078"
                        alt="Card image cap">
                    <div class="card-body">
                        <h5 class="card-title">View Videos</h5>
                        <p class="card-text">You can view available videos provided by respective faculty. </p>
                        <a href="viewVideosStu.jsp"><button type="button" class="btn btn-primary">View</button></a>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card" style="width: 18rem;">
                    <img class="card-img-top" src="https://blog.thecenterforsalesstrategy.com/hs-fs/hub/109236/file-38810327-jpg/images/when_in_doubt%2C_ask_a_question.jpg?width=304&height=271&name=when_in_doubt%2C_ask_a_question.jpg"
                        alt="Card image cap">
                    <div class="card-body">
                        <h5 class="card-title">Ask Doubts</h5>
                        <p class="card-text">You can ask any doubts to the respective faculty by posting it as query.</p>
                        <a href="doubtsStu.jsp" class="btn btn-primary">Ask</a>
                    </div>
                </div>
            </div>
        </div>
</div>
<div class="container">
        <div class="row">
            <div class="col-md-4 h-100">
                <div class="card" style="width: 18rem;">
                    <img class="card-img-top"
                        src="https://images.unsplash.com/photo-1571260898938-0fe5057e7208?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80"
                        alt="Card image cap">
                    <div class="card-body">
                         <h5 class="card-title">Are the results out yet?</h5>
                        <p class="card-text">View marks through our easy to use portal</p>
                        <a href="viewMarksStu.jsp" class="btn btn-primary">Show me the mark list!</a>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card h-100" style="width: 18rem;">
                    <img class="card-img-top" src="https://appsmart.imgix.net/google-keep-668x340.png?auto=format%2C%20compress&crop=focalpoint&dpr=2&fit=crop&fp-x=0.5&fp-y=0.5&h=340&q=80&w=668&s=4ec0e89accaa0cd527fd814c9f31f82d"
                        alt="Card image cap">
                    <div class="card-body">
                        <h5 class="card-title">View Notes</h5>
                        <p class="card-text">Notes that have beeen uploaded by the faculty can be viewed here.</p>
                        <a href="viewNotes.jsp" class="btn btn-primary">View</a>
                    </div>
                </div>
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