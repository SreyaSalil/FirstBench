<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String choice= request.getParameter("regOption");
	if(choice.equals("student")){  
		response.sendRedirect("studentReg.jsp");
	}
	else{
		response.sendRedirect("facultyReg.jsp");
	}
%>
</body>
</html>