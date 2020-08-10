<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<link href="https://fonts.googleapis.com/css2?family=Fredericka+the+Great&display=swap" rel="stylesheet">
 <link href="https://fonts.googleapis.com/css2?family=Prata&display=swap" rel="stylesheet">
 <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.11.2/css/all.css">
<title>Register : Student</title>
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
    background-image: url("https://images.unsplash.com/photo-1535957998253-26ae1ef29506?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=376&q=80");
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
                <a class="nav-item nav-link" href="register.jsp">Go Back</a>
                <a class="nav-item nav-link active" href="logReg.jsp">Login / Register</a>
                <a class="nav-item nav-link" href="contactUs.jsp">Contact Us</a>
            </div>
        </div>
    </nav>
<div class="container">
<div id="heading">
<h1>Welcome to the Registration Page</h1>
<hr>
</div>
<form action="handleRegister.jsp">
<div class="form-check form-check-inline">
  <input class="form-check-input" type="radio" name="regOption" id="inlineRadio1" value="student">
  <label class="form-check-label" for="inlineRadio1">Register as a student</label>
</div>
<div class="form-check form-check-inline">
  <input class="form-check-input" type="radio" name="regOption" id="inlineRadio1" value="faculty">
  <label class="form-check-label" for="inlineRadio1">Register as a faculty</label>
</div>
<button type="submit" class="btn btn-primary">Go!</button>
</form>

<form action="RegisterActionStudent">
<div class="form-group">
    <label for="fname">USN:</label>
    <input type="text" id="fname" name="usn" class="form-control" aria-describedby="emailHelp" placeholder="Enter your USN">
  </div>
<div class="form-group">
    <label for="fname">Name:</label>
    <input type="text" id="fname" name="uname" class="form-control" aria-describedby="emailHelp" placeholder="Enter your name">
  </div>
  <div class="form-group">
   <label for="fpass">Password:</label>
    <input type="password" id="fpass" name="pwd" class="form-control" aria-describedby="emailHelp" placeholder="Enter the password">
  </div>
  <div class="form-group">
<label for="femail">Email:</label>
    <input type="email" id="femail" name="email" class="form-control" aria-describedby="emailHelp" placeholder="Enter email">
  </div>
  <div class="form-group">
    <label for="fphone">Phone:</label>
    <input type="text" id="fphone" name="phn" class="form-control" aria-describedby="emailHelp" placeholder="Enter your mobile number">
  </div>
  <div class="form-group">
    <label for="fadd">Address:</label>
    <input type="text" id="fadd" name="addr" class="form-control" aria-describedby="emailHelp" placeholder="Enter your address">
  </div>
  <label class="my-1 mr-2" for="inlineFormCustomSelectPref">Department</label>
  <select class="custom-select my-1 mr-sm-2" id="inlineFormCustomSelectPref" name="dept">
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
<br>
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
<br>
  <div class="form-group">
    <label for="fname">College:</label>
    <input type="text" id="fname" name="college" class="form-control" aria-describedby="emailHelp" placeholder="Enter the college you are studying in">
  </div>
  <button type="submit" class="btn btn-primary">Submit</button>
</form>
</div>

<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</body>
</html>