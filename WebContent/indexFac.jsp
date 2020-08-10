<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
 <title>Faculty Index</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<link href="https://fonts.googleapis.com/css2?family=Fredericka+the+Great&display=swap" rel="stylesheet">
 <link href="https://fonts.googleapis.com/css2?family=Prata&display=swap" rel="stylesheet">
 <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.11.2/css/all.css">
  <style>
  .fakeimg {
    height: 200px;
    background: #aaa;
  }
  h3 {
  text-align: center;
}
  
.button {
  background-color: #4CAF50; /* Green */
  border: none;
  color: white;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  cursor: pointer;
}
.button5 {
  background-color: white;
  color: black;
  border: 2px solid #555555;
  width: 250px;
  border-radius: 8px;
}
.centered {
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
}
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
    background-image: url("https://images.unsplash.com/photo-1593642703055-4b72c180d9b5?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80");
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
                <a class="nav-item nav-link active" href="logReg.jsp">Login / Register</a>
                <a class="nav-item nav-link" href="contactUs.jsp">Contact Us</a>
            </div>
        </div>
    </nav>

<img src="Resources/virtual.jpg" width="100%" height="100%">

        <div class="centered">
       <a href="loginFac.jsp?status=B"><button class="button button5">Login</button></a>
       <br>
       <h3>or</h3>
       <br>
       <a href="register.jsp"><button class="button button5">Sign Up</button></a></div>
        </div>
</nav>
</body>
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</html>