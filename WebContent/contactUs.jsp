<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Contact Us</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<link href="https://fonts.googleapis.com/css2?family=Fredericka+the+Great&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.11.2/css/all.css">
<style>
	.headingNav{
		font-family: 'Fredericka the Great', cursive;
	}
	.contactUs{
		background-image:url("https://images.unsplash.com/photo-1499159058454-75067059248a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=751&q=80");
		text-align:center;
		color:grey;
		background-size:100% 100%;
	}
	/*=========================
  Icons
 ================= */
* {
  margin: 0;
  padding: 0;
}

/* footer social icons */
.footer {
  background-color: black;
  padding: 20px 0;
  margin-top: 25px;
  text-align: center;
  color:white;
}

ul.social-network {
  list-style: none;
  display: inline;
  margin: auto;
}
ul.social-network li {
  display: inline;
  margin: 0 10px;
}

/* footer social icons */
.social-network a.icoFacebook:hover {
  background-color: #3B5998;
}
.social-network a.icoTwitter:hover {
  background-color: #33ccff;
}
.social-network a.icoMedium:hover {
  background-color: #00AB6C;
}
.social-network a.icoQuora:hover {
  background-color: #AA2200;
}
.social-network a.icoLinkedin:hover {
  background-color: #007bb7;
}
.social-network a.icoInstagram:hover {
  background: #f09433;
  background: -moz-linear-gradient(45deg, #f09433 0%, #e6683c 25%, #dc2743 50%, #cc2366 75%, #bc1888 100%);
  background: -webkit-linear-gradient(45deg, #f09433 0%, #e6683c 25%, #dc2743 50%, #cc2366 75%, #bc1888 100%);
  background: linear-gradient(45deg, #f09433 0%, #e6683c 25%, #dc2743 50%, #cc2366 75%, #bc1888 100%);
  filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#f09433', endColorstr='#bc1888', GradientType=1);
}

.social-network a.icoRss:hover i, .social-network a.icoFacebook:hover i, .social-network a.icoTwitter:hover i, .social-network a.icoMedium:hover i, .social-network a.icoVimeo:hover i, .social-network a.icoLinkedin:hover i {
  color: #fff;
}

.social-circle li a {
  display: inline-block;
  position: relative;
  margin: 0 auto 0 auto;
  -moz-border-radius: 50%;
  -webkit-border-radius: 50%;
  border-radius: 50%;
  text-align: center;
  width: 60px;
  height: 60px;
  font-size: 22px;
}

.social-circle li i {
  margin: 0;
  line-height: 60px;
  text-align: center;
}

.social-circle li a:hover i, .triggeredHover {
  -moz-transform: rotate(360deg);
  -webkit-transform: rotate(360deg);
  -ms--transform: rotate(360deg);
  transform: rotate(360deg);
  -webkit-transition: all 0.2s;
  -moz-transition: all 0.2s;
  -o-transition: all 0.2s;
  -ms-transition: all 0.2s;
  transition: all 0.2s;
}

.social-circle i {
  color: #fff;
  -webkit-transition: all 0.8s;
  -moz-transition: all 0.8s;
  -o-transition: all 0.8s;
  -ms-transition: all 0.8s;
  transition: all 0.8s;
}

.social-circle a {
  background-color: #CCD8EA;
}

@media screen and (max-width: 500px) {
  ul.social-network li {
    display: inline;
    margin: 0 5px;
  }
}
@media screen and (max-width: 450px) {
  ul.social-network li {
    display: inline;
    margin: 0 5px;
  }

  .social-circle li a {
    display: inline-block;
    position: relative;
    margin: 0 auto 0 auto;
    -moz-border-radius: 50%;
    -webkit-border-radius: 50%;
    border-radius: 50%;
    text-align: center;
    width: 40px;
    height: 40px;
    font-size: 16px;
  }

  .social-circle li i {
    margin: 0;
    line-height: 40px;
    text-align: center;
  }
}
@media screen and (max-width: 350px) {
  ul.social-network li {
    display: inline;
    margin: 0 2px;
  }

  .social-circle li a {
    display: inline-block;
    position: relative;
    margin: 0 auto 0 auto;
    -moz-border-radius: 50%;
    -webkit-border-radius: 50%;
    border-radius: 50%;
    text-align: center;
    width: 40px;
    height: 40px;
    font-size: 16px;
  }

  .social-circle li i {
    margin: 0;
    line-height: 40px;
    text-align: center;
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
                <a class="nav-item nav-link" href="logReg.jsp">Login / Register</a>
                <a class="nav-item nav-link active" href="contactUs.jsp">Contact Us</a>
            </div>
        </div>
    </nav>
<div class="jumbotron jumbotron-fluid  contactUs">
  <div class="container">
    <h1 class="display-4">Contact Us</h1>
    <p class="lead">We will reach out to you.</p>
  </div>
</div>
<div class="container">
	<div class="row">
		<div class="col-md-4">
			<div class="card bg-light mb-3 h-100" style="max-width: 20rem;">
  <div class="card-header"><b>Afreen Mohammed</b></div>
  <div class="card-body">
    <p class="card-text"><b>Mobile:</b> +91 70757 58020</p>
    <p class="card-text"><b>E-mail:</b> mohammedafreen0200@gmail.com</p>
  </div>
</div>
		</div>
		<div class="col-md-4">
			<div class="card bg-light mb-3 h-100" style="max-width: 20rem;">
  <div class="card-header"><b>Sony Bhashyam</b></div>
  <div class="card-body">
    <p class="card-text"><b>Mobile:</b> +91 91214 84920</p>
    <p class="card-text"><b>E-mail:</b> sonybhashysm2000@gmail.com</p>
  </div>
</div>
		</div>
		<div class="col-md-4">
			<div class="card bg-light h-100" style="max-width: 20rem;">
  <div class="card-header"><b>Sreya Salil</b></div>
  <div class="card-body">
    <p class="card-text"><b>Mobile:</b> +91 90716 51603</p>
    <p class="card-text"><b>E-mail:</b> sreya1805@gmail.com</p>
  </div>
</div>
		</div>
	</div>
</div>

<body>
  <div class="footer">
    <ul class="social-network social-circle">
      <li><a class="icoLinkedin" href="https://www.linkedin.com" title="Linkedin"><i class="fab fa-linkedin-in"></i></a></li>
      <li><a class="icoTwitter" href="https://twitter.com" title="Twitter"><i class="fab fa-twitter"></i></a></li>
      <li><a class="icoMedium" href="https://medium.com" title="Medium"><i class="fab fa-medium-m"></i></a></li>
      <li><a class="icoQuora" href="https://www.quora.com" title="Quora"><i class="fab fa-quora"></i></a></li>
      <li><a class="icoFacebook" href="https://www.facebook.com" title="Facebook"><i class="fab fa-facebook"></i></a></li>
      <li><a class="icoInstagram" href="https://www.instagram.com" title="Instagram"><i class="fab fa-instagram"></i></a></li>
    </ul>
    <span class="headingNav">FirstBench <i class="fas fa-chalkboard-teacher"></i>  2020</span>
  </div>
</body>
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</body>
</html>