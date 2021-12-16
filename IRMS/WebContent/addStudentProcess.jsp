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

		String studentId = request.getParameter("studentId");
		String studentName = request.getParameter("studentName");
		String specialization = request.getParameter("specialization");
		String studentEmail = request.getParameter("studentEmail");
		String supervisorEmail = request.getParameter("supervisorEmail");
		String stuMobileNumber = request.getParameter("stuMobileNumber");
		String internshipStartDate = request.getParameter("internshipStartDate");
		String currentYear = request.getParameter("currentYear");
		String plantoComplete2ndYear = request.getParameter("plantoComplete2ndYear");
		String periodComplete2year = request.getParameter("periodComplete2year");

		String query = "insert into student_details values(null,'" + studentId + "', '" + studentName + "', '" + specialization
		+ "', '" + studentEmail + "', '" + supervisorEmail + "', '" + stuMobileNumber + "', '" + internshipStartDate
		+ "', '" + currentYear + "','" + plantoComplete2ndYear + "', '" + periodComplete2year + "')";
		stmt.executeUpdate(query);

		/* out.println("Data Insert Successfully !!!"); */
		RequestDispatcher dispatcher = request.getRequestDispatcher("studentDetails.jsp");
		dispatcher.forward(request, response);

	} catch (Exception e) {
		out.println("Error...!" + e);

	}
	%>
</body>
</html>