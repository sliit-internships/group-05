<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%@page import="java.sql.*"%>
	<%@page import="java.sql.DriverManager"%>
	<%@page import="java.sql.ResultSet"%>
	<%@page import="java.sql.Statement"%>
	<%@page import="java.sql.Connection"%>
	<%@page import="jakarta.servlet.RequestDispatcher"%>

	<%
	try {
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/admindb", "root", "11111");
		Statement stmt = con.createStatement();

		String superName = request.getParameter("superName");
		String title = request.getParameter("title");
		String superEmail = request.getParameter("superEmail");
		String superMobileNumber = request.getParameter("superMobileNumber");
		String superCompany = request.getParameter("superCompany");
		String superComAddress = request.getParameter("superComAddress");

		String query = "insert into super_details values(null,'" + superName + "', '" + title + "', '" + superEmail
		+ "', '" + superMobileNumber + "', '" + superCompany + "', '" + superComAddress + "')";
		
		stmt.executeUpdate(query);

		/* out.println("Data Insert Successfully !!!"); */
		RequestDispatcher dispatcher = request.getRequestDispatcher("superDetails.jsp");
		dispatcher.forward(request, response);

	} catch (Exception e) {
		out.println("Error...!" + e);

	}
	%>
</body>
</html>