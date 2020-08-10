
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
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
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/arial.js"></script>
<script type="text/javascript" src="js/cuf_run.js"></script>

<script src="./script/reg.js"></script>

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
  <div class="hbg">&nbsp;  <!--<img src="images/images.jpg"  align="middle" width="650" height="210" alt="" />--></div> 

  <div class="content">

    <div class="content_resize">

      <div class="mainbar">

        <div class="article">
        <center>
 
 <form action="upload_back.jsp" method="post" enctype="multipart/form-data" name="form1" id="form1"/>
   <center>

    <table border="2" bgcolor="wheat" width="35%">
       <tr>
               <td><b><center><font family="calibri" color="green">MULTIPLE FILES UPLOAD</font></center></td>
           </tr>
       <tr>
               <td align="left">
                     <font family="calibri" color="purple">  Select File: </font><input name="file" type="file" id="file" align="right">
                   </td>
           </tr>
           
                 <tr>
                    <td align="center">
               <input type="submit" name="Submit" value="SUBMIT"/>
               
                        </td>
                 </tr>
    </table>
        <center>
      </div>
 
 


        
          <div class="clr"></div>
          

      </div>


     

       
          <div class="clr"></div>
         
      </div>
      <div class="clr"></div>
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