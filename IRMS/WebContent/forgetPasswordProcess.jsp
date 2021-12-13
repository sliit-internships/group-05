<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
	try {
		Class.forName("com.mysql.jdbc.Driver").newInstance();
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/admindb", "root", "11111");
		Statement st = con.createStatement();
		String email = request.getParameter("email");
		String strQuery = "SELECT password FROM system_register where email='" + email + "'";
		ResultSet rs = st.executeQuery(strQuery);
		rs.next();
		String Countrow = rs.getString(1);
		if (Countrow.equals("1")) {
			/*mail code
			paste your mail code here
			------------------
			Mail code*/
			out.println("Password send to your email id successfully !");
		} else {
			out.println("Invalid Email Id !");
		}
	} catch (Exception e) {
		e.printStackTrace();
	}
	%>
</body>
</html>