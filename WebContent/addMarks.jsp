<!DOCTYPE html>
<html lang="en">
<head>
<title>Virtual Class</title>
<meta charset="utf-8">
<title>View all Users</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<link href="https://fonts.googleapis.com/css2?family=Fredericka+the+Great&display=swap" rel="stylesheet">
 <link href="https://fonts.googleapis.com/css2?family=Prata&display=swap" rel="stylesheet">
 <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.11.2/css/all.css">
<script type="text/javascript" src="js/jquery-1.5.2.js" ></script>
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-replace.js"></script>
<script type="text/javascript" src="js/Molengo_400.font.js"></script>
<script type="text/javascript" src="js/Expletus_Sans_400.font.js"></script>
<!--[if lt IE 9]>
<script type="text/javascript" src="js/html5.js"></script>
<style type="text/css">.bg, .box2{behavior:url("js/PIE.htc");}</style>
<![endif]-->
<script language="JavaScript">

function addProduct(){
    if(document.myform.imagefile.value=="")
        {
            alert("Please choose file");
            return false;
        }
    else
    {
            document.myform.fname.value=document.myform.imagefile.value;
            document.myform.action="addmarks";
            document.myform.submit();
            return true;
        }
}
</script>
<style>
 .headingNav{
		font-family: 'Fredericka the Great', cursive;
	}
body{
    background-image: url("https://images.unsplash.com/photo-1559173525-d16dfd7c17fe?ixlib=rb-1.2.1&auto=format&fit=crop&w=667&q=80");
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
	font-family: 'Prata', serif;

}
hr{
    overflow: visible; /* For IE */
    padding: 0;
    border: none;
    border-top: medium double #333;
    color: #333;
    text-align: center;
}
 </style>
</head>
<body>
<div class="container">
	<div id="heading">
	<h3>Upload Marks</h3>
	<hr>
	</div>
      
    <form name="myform" method="post" onsubmit="return addProduct()"  enctype="multipart/form-data">
    <table>
   <tr><td> Upload File:</td><td><input type="file" name="imagefile"></td></tr>
    <tr><td><input type="hidden" name="fname">
		<tr><td> <input type="submit" value="Upload" class="btn btn-primary"> </td></tr>
			      </table>
			  </form>
      
    </header>
    <!-- / header -->
  </div>
<script type="text/javascript">Cufon.now();</script>
</body>
</html>