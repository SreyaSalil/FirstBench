<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Faculty HomPage</title>
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
  <div class="container">
    <h1 class="display-4">Welcome <%=name %>!</h1>
  </div>
</div>
<div class="container">
        <div class="row">
            <div class="col-md-4 h-100">
                <div class="card" style="width: 18rem;">
                    <img class="card-img-top"
                        src="https://stangelsrohini.com/images/dummy.jpg"
                        alt="Card image cap">
                    <div class="card-body">
                        <h5 class="card-title">Upload Video</h5>
                        <p class="card-text">When you record any session, you can post here immediately or can schedule it to post at a later date.</p>
                            <a href="uploadVideo.jsp"><button type="button" class="btn btn-primary">Upload Now</button></a>
                    </div>
                </div>
            </div>
            <div class="col-md-4 h-100">
                <div class="card" style="width: 18rem;">
                    <img class="card-img-top"
                        src="https://res.cloudinary.com/monday-blogs/w_1024,h_1024,c_fit/fl_lossy,f_auto/wp-blog/2019/12/Meeting-Notes-min.jpg"
                        alt="Card image cap">
                    <div class="card-body">
                        <h5 class="card-title">Upload Notes</h5>
                        <p class="card-text">Drop here all kind of files that are necessary related to any particular subject of the semester for which you are held as faculty member.  </p>
                        <a href="uploadNotes.jsp"><button type="button" class="btn btn-primary">Add</button></a>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card" style="width: 18rem;">
                    <img class="card-img-top" src="https://appsmart.imgix.net/google-keep-668x340.png?auto=format%2C%20compress&crop=focalpoint&dpr=2&fit=crop&fp-x=0.5&fp-y=0.5&h=340&q=80&w=668&s=4ec0e89accaa0cd527fd814c9f31f82d"
                        alt="Card image cap">
                    <div class="card-body">
                        <h5 class="card-title">View Notes</h5>
                        <p class="card-text">You can view the notes here whatever you have uploaded previously.</p>
                        <a href="viewNotes.jsp" class="btn btn-primary">View</a>
                    </div>
                </div>
            </div>
        </div>
</div>
<div class="container">
        <div class="row">
            <div class="col-md-4 h-100"><br>
                <div class="card" style="width: 18rem;">
                    <img class="card-img-top"
                        src="https://www.shareicon.net/data/512x512/2015/10/30/664090_question_512x512.png"
                        alt="Card image cap">
                    <div class="card-body">
                        <h5 class="card-title">View Doubts</h5>
                        <p class="card-text">View all the doubts posted by students and clarify them if possible in upcoming sessions.</p>
                            <a href="doubtsFac.jsp"><button type="button" class="btn btn-primary">View</button></a>
                    </div>
                </div>
            </div>
            <div class="col-md-4 h-100"><br>
                <div class="card" style="width: 18rem;">
                    <img class="card-img-top"
                        src="https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTeDInd3XPEYXjDWNAMCzbs8bkEmYliuqsX1Q&usqp=CAU"
                        alt="Card image cap">
                    <div class="card-body">
                        <h5 class="card-title">View Videos</h5>
                        <p class="card-text">You can view any of the session's video here by tapping on this view button </p>
                        <a href="viewVideosFac.jsp"><button type="button" class="btn btn-primary">View</button></a>
                    </div>
                </div>
            </div>
            <div class="col-md-4"><br>
                <div class="card" style="width: 18rem;">
                    <img class="card-img-top" src="https://wp-media.petersons.com/blog/wp-content/uploads/2019/11/08093323/online-learning-.jpg"
                        alt="Card image cap">
                    <div class="card-body">
                        <h5 class="card-title">View marks</h5>
                        <p class="card-text">View marks of all the students.</p>
                        <a href="viewMarks.jsp" class="btn btn-primary">View now</a>
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