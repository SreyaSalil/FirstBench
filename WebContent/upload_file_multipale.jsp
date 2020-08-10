

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<%@ page import="java.util.List" %>
   <%@ page import="java.util.Iterator" %>
   <%@ page import="java.io.*" %>
   <%@ page import="java.sql.*" %>
    <%@ page import="java.lang.*" %>
   
   <%@ page import="org.apache.commons.fileupload.servlet.ServletFileUpload"%>
   <%@ page import="org.apache.commons.fileupload.disk.DiskFileItemFactory"%>
   <%@ page import="org.apache.commons.fileupload.*"%>
   <center><table border="0">
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
</head>
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
   <%
 boolean isMultipart = ServletFileUpload.isMultipartContent(request);
 if (!isMultipart) {
 } else {
           FileItemFactory factory = new DiskFileItemFactory();
           ServletFileUpload upload = new ServletFileUpload(factory);
           List items = null;
           try {
                   items = upload.parseRequest(request);
           } catch (FileUploadException e) {
                   e.printStackTrace();
           }
           Iterator itr = items.iterator();
           while (itr.hasNext()) {
           FileItem item = (FileItem) itr.next();
           if (item.isFormField()) {
           } else {
               
                   try {
                       String url="jdbc:mysql://localhost:3306/firstbench?user=root&password=";
                      Class.forName("com.mysql.jdbc.Driver");
                      ResultSet rs; 
                       ResultSet rs1; 
                     
        	           Connection con1=DriverManager.getConnection(url);
    	                    Statement st=con1.createStatement();
    	                    String fname=(String)session.getAttribute("un");
                             String dept=(String)session.getAttribute("dept");
                            
                           String itemName = item.getName();
                           File f = new File(itemName);
                           String i=f.getName();
                           System.out.println(i);
                           System.out.println(itemName);
                           File savedFile = new File(config.getServletContext().getRealPath("/")+"uploadedFiles/"+i);
                           item.write(savedFile);
                           System.out.println(savedFile);

                         String query="update videos set video='"+i+"' where name='"+fname+"' and dept= '"+dept+"' and video='pending'";
                                                     st.executeUpdate(query);
                             %>
                             
                    <tr><td><h1><font color="orange"><%=i%>&nbsp;&nbsp;FILE IS UPLOADED SUCCESSFULLY</font></h1></td></tr>
                    <a href="homeFac.jsp">BackToHome</a>
                    
                    
                    <%
                           
                         //  out.println("<tr><td><b>Your file has been savedat the loaction:</b></td></tr><tr><td><b>"+config.getServletContext().getRealPath("/")+"uploadedFiles"+"\\"+itemName+"</td></tr>");
                   
                           
                   } 
                   
                                     
                   catch (Exception e) {
                           e.printStackTrace();
                   }
           }
           }
   }
   %> 
    <tr><td><h2><font color="purple"><a href="homeFac.jsp">Back</font></h2></td></tr>
       </table>
   </center>
 <div class="footer text-center py-3">
    <span class="headingNav">FirstBench<i class="fas fa-chalkboard-teacher"></i> 2020</span>
      </div>