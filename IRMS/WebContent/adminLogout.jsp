<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%
// for HTTP 1.1
response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
//for HTTP 1.0
response.setHeader("Pragma", "no-cache");
//for Proxies
response.setHeader("Expires", "0");
		
if(session.getAttribute("email")==null);
response.sendRedirect("studentLogin.jsp");

%>
</body>
</html>