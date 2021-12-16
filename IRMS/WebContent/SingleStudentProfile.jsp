<!DOCTYPE html>
<html lang="en">
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<%@ page import="javax.sql.*"%>
<%@ page import="java.io.*"%>
<%@ page import="jakarta.servlet.*"%>
<%@ page import="jakarta.servlet.http.*"%>
<head>
<meta charset="ISO-8859-1">
<title>Student Profile</title>
<!-- Fontfaces CSS-->
<link href="css/font-face.css" rel="stylesheet" media="all">
<link href="vendor/font-awesome-4.7/css/font-awesome.min.css"
	rel="stylesheet" media="all">
<link href="vendor/font-awesome-5/css/fontawesome-all.min.css"
	rel="stylesheet" media="all">
<link href="vendor/mdi-font/css/material-design-iconic-font.min.css"
	rel="stylesheet" media="all">

<!-- Bootstrap CSS-->
<link href="vendor/bootstrap-4.1/bootstrap.min.css" rel="stylesheet"
	media="all">

<!-- Vendor CSS-->
<link href="vendor/animsition/animsition.min.css" rel="stylesheet"
	media="all">
<link
	href="vendor/bootstrap-progressbar/bootstrap-progressbar-3.3.4.min.css"
	rel="stylesheet" media="all">
<link href="vendor/wow/animate.css" rel="stylesheet" media="all">
<link href="vendor/css-hamburgers/hamburgers.min.css" rel="stylesheet"
	media="all">
<link href="vendor/slick/slick.css" rel="stylesheet" media="all">
<link href="vendor/select2/select2.min.css" rel="stylesheet" media="all">
<link href="vendor/perfect-scrollbar/perfect-scrollbar.css"
	rel="stylesheet" media="all">

<!-- Main CSS-->
<link href="./css/themeStudent.css" rel="stylesheet" media="all">
</head>
<body>
	<div class="row">
		<div class="col-lg-9">
			<h2 class="title-1 m-b-25"  align="center">Student Details</h2>
			<div class="table-responsive table--no-card m-b-40">
				<form  method="get">
					<table  class="table table-borderless table-striped table-earning">
					
						<%
						try {
							Class.forName("com.mysql.jdbc.Driver");
							Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/admindb", "root", "");
							Statement stmt = con.createStatement();
							String z = request.getParameter("email");
							String sql = "select * from admindb.internship_registered_student where email='" + z + "'";
							ResultSet rs = stmt.executeQuery(sql);
							while (rs.next()) {
								String id = rs.getString("id");
								String name = rs.getString("name");
								String email = rs.getString("email");
								String mobile = rs.getString("mobile");
								String year = rs.getString("year");
								String semester = rs.getString("semester");
								String specialization = rs.getString("specialization");
								String foundintern = rs.getString("foundintern");
								String supervisoremail = rs.getString("supervisoremail");
								String acceptancetype = rs.getString("acceptancetype");	
							if(supervisoremail.isEmpty())	{
								
								
								
								
						%>
						

						
							<tr><th>ID	:</th>
								<td><%=id%></td>
							</tr>
							<tr><th>Name	:</th>
								<td><%=name%></td>
								</tr>
							<tr><th>Student Email	:</th>
								<td><%=email%></td></tr>
							<tr><th>Student Contact Number :</th>
								<td><%=mobile%></td>
								</tr>
							<tr><th>Registered Year:</th>
								<td><%=year%></td>
								</tr>
							<tr><th>Specialization	:</th>
								<td><%=specialization%></td>
								</tr>
								
							<tr><td colspan="2" align="center"><a href="InternshipStudentReg.jsp"><input  type="button" value="Update Profile" ></a></td></tr>
							
						

							
					


						<%}else{
							%>
							<tr><th>ID	:</th>
								<td><%=id%></td>
							</tr>
							<tr><th>Name	:</th>
								<td><%=name%></td>
								</tr>
							<tr><th>Student Email	:</th>
								<td><%=email%></td></tr>
							<tr><th>Student Contact Number :</th>
								<td><%=mobile%></td>
								</tr>
							<tr><th>Registered Year:</th>
								<td><%=year%></td>
								</tr>
							<tr><th>Specialization	:</th>
								<td><%=specialization%></td>
								</tr>
							<tr><th>Found Intern	:</th>
								<td><%=foundintern%></td>
								</tr>
							<tr><th>Supervisor Email	:</th>
								<td><%=supervisoremail%></td>
								</tr>
						

							
						<%
						}
						}

						} catch (Exception e) {
						e.printStackTrace();
						}
						%>
					</table>
				</form>
			</div>
		</div>
	</div>
</body>
</html>

