<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome to FirstBench!</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<link href="https://fonts.googleapis.com/css2?family=Fredericka+the+Great&display=swap" rel="stylesheet">
<link rel="stylesheet" href="Resources/index.css">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.11.2/css/all.css">
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
                <a class="nav-item nav-link active" href="index.jsp">Home <span class="sr-only">(current)</span></a>
                <a class="nav-item nav-link" href="logReg.jsp">Login / Register</a>
                <a class="nav-item nav-link" href="contactUs.jsp">Contact Us</a>
            </div>
        </div>
    </nav>
<div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
        <ol class="carousel-indicators">
            <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="3"></li>
        </ol>
        <div class="carousel-inner">
            <div class="carousel-item active">
                <div class="card bg-dark text-white">
                    <img class="card-img"
                        src="https://news.umanitoba.ca/wp-content/uploads/2013/10/iStock_000019012355Medium.jpg"
                        alt="Card image">
                    <div class="card-img-overlay">
                        <h1 class="card-title" id="gourmetmuffins"><span class="headingNav">FirstBench <i class="fas fa-chalkboard-teacher"></i></span></h1>
                        <p class="card-text" id="gourmetmuffinsp">The one stop for online education....now just a click away.</p>
                        <p class="card-text">Explore to learn more!</p>
                    </div>
                </div>
            </div>
            <div class="carousel-item">
                <div class="card bg-dark text-white">
                    <img class="card-img"
                        src="https://images.unsplash.com/photo-1571260899304-425eee4c7efc?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80"
                        alt="Card image">
                    <div class="card-img-overlay">
                        <h5 class="card-title" id="freshmuffins">Stay ahead of the crowd...</h5>
                        <p class="card-text" id="freshmuffinsp">..with our comprehensive collection of notes</p>
                    </div>
                </div>
            </div>
            <div class="carousel-item">
                <div class="card bg-dark text-white">
                    <img class="card-img"
                        src="https://images.unsplash.com/photo-1522202176988-66273c2fd55f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=751&q=80"
                        alt="Card image">
                    <div class="card-img-overlay">
                        <div class="container-fluid">
                            <h1 class="card-title" id="strawberry-title">Wide range of video lectures</h1>
                            <h5 class="card-text" id="strawberry-subtitle">So that no one's left behind</h5>
                        </div>

                    </div>
                </div>
            </div>
            <div class="carousel-item">
                <div class="card bg-dark text-white">
                    <img class="card-img"
                        src="https://images.unsplash.com/photo-1573166364524-d9dbfd8bbf83?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80"
                        alt="Card image">
                    <div class="card-img-overlay">
                        <h5 class="card-title" id="trynew">Helping teachers reach students better.</h5>
                        <p class="card-text" id="trynewp">Upload materials to students and teach them better via solving doubts!</p>
                    </div>
                </div>
            </div>
        </div>
        <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </a>
    </div>
    <div class="container">
        <div class="row">
            <div class="col-md-4">
                <div class="card" style="width: 18rem;">
                    <img class="card-img-top"
                        src="https://icon-library.com/images/add-people-icon/add-people-icon-7.jpg"
                        alt="Card image cap">
                    <div class="card-body">
                        <h5 class="card-title">Login or register Now!</h5>
                        <p class="card-text">Your free virtual classroom is just a click away. Teachers or students, there's space for everyone!</p>
                        <a href="logReg.jsp" class="btn btn-primary">What are we waiting for?</a>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card" style="width: 18rem;">
                    <img class="card-img-top"
                        src="https://www.geekytech.co.uk/wp-content/uploads/2018/03/youtube-related-videos-disable-1.jpg"
                        alt="Card image cap">
                    <div class="card-body">
                        <h5 class="card-title">Upload and view videos</h5>
                        <p class="card-text">We believe in sharing. Free videos for everyone!</p>
                        <a href="logReg.jsp" class="btn btn-primary">Watch now!</a>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card" style="width: 18rem;">
                    <img class="card-img-top" src="https://miro.medium.com/max/625/1*4r4x8mggXOEYz1vU7tCdAw.jpeg"
                        alt="Card image cap">
                    <div class="card-body">
                        <h5 class="card-title">Comprehensive Notes</h5>
                        <p class="card-text">Comprehensive notes for students uploaded by dedicated faculty.</p>
                        <a href="logReg.jsp" class="btn btn-primary">View them now</a>
                    </div>
                </div>
            </div>
        </div>
        <br>
        <div class="row">
        	<div class="col-md-4">
                <div class="card" style="width: 18rem;">
                    <img class="card-img-top" src="https://images.unsplash.com/photo-1571260898938-0fe5057e7208?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80"
                        alt="Card image cap">
                    <div class="card-body">
                        <h5 class="card-title">Are the results out yet?</h5>
                        <p class="card-text">Upload and view marks through our easy to use portal</p>
                        <a href="logReg.jsp" class="btn btn-primary">Show me the mark list!</a>
                    </div>
                </div>
            </div>
            
            <div class="col-md-4">
                <div class="card" style="width: 18rem;">
                    <img class="card-img-top" src="https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSHFqL4rrgle4-gqpiV84oYQY0_h3rbVIs-7Q&usqp=CAU"
                        alt="Card image cap">
                    <div class="card-body">
                        <h5 class="card-title">Ask for help</h5>
                        <p class="card-text">Need homework help? Difficult concept? Ask your teacher to help</p>
                        <a href="logReg.jsp" class="btn btn-primary">Ask a doubt</a>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card" style="width: 18rem;">
                    <img class="card-img-top" src="https://blog.capterra.com/wp-content/uploads/2016/03/img-admin-customer-service.jpg"
                        alt="Card image cap">
                    <div class="card-body">
                        <h5 class="card-title">Technical issues?</h5>
                        <p class="card-text">Don't worry..Contact us now!</p>
                        <a href="contactUs.jsp" class="btn btn-primary">Contact Us!</a>
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