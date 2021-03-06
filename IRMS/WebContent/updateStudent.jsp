<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>

<!DOCTYPE html>
<html>
<head>
<!-- Required meta tags-->
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!-- Title Page-->
<title>Student Dashboard</title>

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


<!-- Icons font CSS-->
<link href="vendor/mdi-font/css/material-design-iconic-font.min.css"
	rel="stylesheet" media="all">
<link href="vendor/font-awesome-4.7/css/font-awesome.min.css"
	rel="stylesheet" media="all">
<!-- Font special for pages-->
<link
	href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i"
	rel="stylesheet">

<!-- Vendor CSS-->
<link href="vendor/select2/select2.min.css" rel="stylesheet" media="all">
<link href="vendor/datepicker/daterangepicker.css" rel="stylesheet"
	media="all">

<!-- Main CSS-->
<link href="css/AddStudent.css" rel="stylesheet" media="all">

</head>
<%
String host = "jdbc:mysql://localhost:3306/admindb";
Statement stmt = null;
Connection con = null;
ResultSet rs = null;
PreparedStatement pstmt = null;
Class.forName("com.mysql.jdbc.Driver").newInstance();
con = DriverManager.getConnection(host, "root", "");
%>
<body class="animsition">
	<div class="page-wrapper">
			<!-- MAIN CONTENT-->
			<div class="main-content" style="width:75%; margin: auto;">
				<div class="section__content section__content--p30">
					<div class="container-fluid">
						<div class="page-wrapper font-robo">
							<div class="card card-2">
								<div class="card-heading">
									<a href="studentDetails.jsp"
										style="margin-left: 50px; color: #fff; font-weight: 400; font-size: 15px; border: solid; padding: 10px 10px; border-radius: 5px;"
										type="submit"> Go Back </a>
								</div>
								<div class="card-body">
									<h2 class="title">Registration Info</h2>
									<form method="post" action="">
										<%
										stmt = con.createStatement();
										String email = request.getParameter("email");
										/* int num = Integer.parseInt(id);
										String s = Integer.toString(num); */
										String data = "select * from internship_registered_student where email='" + email + "'";
										rs = stmt.executeQuery(data);
										while (rs.next()) {
										%>
										<input type="hidden" name="id"
											value='<%=rs.getString("id")%>' />
										<div class="col-8">
											<div class="input-group">
												<label for="email" style="font-size: 1.1rem;">SLIIT
													Student Identification Number</label><input class="input--style-2"
													type="text" placeholder="Student ID" name="studentId"
													value='<%=rs.getString("id")%>'>
											</div>
										</div>
										<div class="col-8">
											<div class="input-group">
												<label for="email" style="font-size: 1.1rem;">Student
													Name</label><input class="input--style-2" type="text"
													placeholder="Student Name" name="studentName"
													value='<%=rs.getString("name")%>'>
											</div>
										</div>
										<div class="col-8">
											<div class="input-group">
												<label for="email" style="font-size: 1.1rem;">Student
													E-Mail</label><input class="input--style-2" type="text"
													placeholder="Student E-Mail" name="studentEmail"
													value='<%=rs.getString("email")%>'>
											</div>
										</div>
										<div class="col-8">
											<div class="input-group">
												<label for="email" style="font-size: 1.1rem;">Mobile
													Number</label><input class="input--style-2" type="text"
													placeholder="Mobile Number" name="stuMobileNumber"
													value='<%=rs.getString("mobile")%>'>
											</div>
										</div>
										<div class="col-8">
											<div class="input-group">
												<div class="rs-select2 js-select-simple select--no-search">
													<label for="email" style="font-size: 1.1rem;">Current
														Year of Registration</label><select name="currentYear"><%=rs.getString("year")%>
														<option disabled="disabled" selected="selected">-- Select --</option>
														<option value="Year 1">Year 1</option>
														<option value="Year 2">Year 2</option>
														<option value="Year 3">Year 3</option>
														<option value="Year 4">Year 4</option>
													</select>
													<div class="select-dropdown"></div>
												</div>
											</div>
										</div>
										<div class="col-8">
											<div class="input-group">
												<div class="rs-select2 js-select-simple select--no-search">
													<label for="email" style="font-size: 1.1rem;">Period
															of Complete 2nd Year</label><select name="semester"><%=rs.getString("semester")%>
														<option disabled="disabled" selected="selected">-- Select --</option>
														<option value="January - June">January - June</option>
														<option value="June - November">June - November</option>
													</select>
													<div class="select-dropdown"></div>
												</div>
											</div>
										</div>
										<div class="col-8">
											<div class="input-group">
												<div class="rs-select2 js-select-simple select--no-search">
													<label for="email" style="font-size: 1.1rem;">Specialization</label><select
														name="specialization"><%=rs.getString("specialization")%>
														<option disabled="disabled" selected="selected">-- Select --</option>
														<option value="IT">IT</option>
														<option value="SE">SE</option>
														<option value="CSNE">CSNE</option>
														<option value="ISE">ISE</option>
														<option value="CS">CS</option>
														<option value="IM">IM</option>
													</select>
													<div class="select-dropdown"></div>
												</div>
											</div>
										</div>
										<div class="col-8">
											<div class="input-group">
												<div class="rs-select2 js-select-simple select--no-search">
													<label for="email" style="font-size: 1.1rem;">Found Internship</label><select
														name="foundIntern"><%=rs.getString("foundintern")%>
														<option disabled="disabled" selected="selected">-- Select --</option>
														<option value="YES">YES</option>
														<option value="NO">NO</option>
												
													</select>
													<div class="select-dropdown"></div>
												</div>
											</div>
										</div>
										
										<div class="col-8">
											<div class="input-group">
												<label for="email" style="font-size: 1.1rem;">Supervisor
													E-Mail</label><input class="input--style-2" type="text"
													placeholder="Supervisor E-Mail" name="supervisorEmail"
													value='<%=rs.getString("supervisorEmail")%>'>
											</div>
										</div>
										
										<div class="col-8">
											<div class="input-group">
												<div class="rs-select2 js-select-simple select--no-search">
													<label for="email" style="font-size: 1.1rem;">Approval</label><select
														name="approval"><%=rs.getString("acceptancetype")%>
														<option disabled="disabled" selected="selected">-- Select --</option>
														<option value="APPROVES">APPROVES</option>
														<option value="REJECTERD">REJECTERD</option>
														<option value="PENDING">PENDING</option>
													</select>
													<div class="select-dropdown"></div>
												</div>
											</div>
										</div>
										
										<%
										}
										%>
										<div class="p-t-30">
											<input type="submit" class="btn btn--radius btn--green"
												value="Update">
										</div>
										<%
										String a = request.getParameter("email");
										String studentId = request.getParameter("id");
										String studentName = request.getParameter("name");
										String studentEmail = request.getParameter("email");
										String stuMobileNumber = request.getParameter("mobile");
										String currentYear = request.getParameter("year");
										String semester = request.getParameter("semester");
										String specialization = request.getParameter("specialization");
										String foundIntern = request.getParameter("foundintern");
										String supervisorEmail = request.getParameter("supervisoremail");
										String approval = request.getParameter("acceptancetype");
										if (a != null && studentId != null && studentName != null && studentEmail != null && stuMobileNumber != null
												&& currentYear != null && semester != null && specialization != null && foundIntern != null
												&& supervisorEmail != null && approval != null) {
											String query = "update student_details set id=?,name=?,email=?,mobile=?,year=?,semester=?,specialization=?,foundintern=?,supervisoremail=?,acceptancetype=? where email= '"
											+ a + "'";
											pstmt = con.prepareStatement(query);
											pstmt.setString(1, studentId);
											pstmt.setString(2, studentName);
											pstmt.setString(3, specialization);
											pstmt.setString(4, stuMobileNumber);
											pstmt.setString(5, currentYear);
											pstmt.setString(6, semester);
											pstmt.setString(7, specialization);
											pstmt.setString(8, foundIntern);
											pstmt.setString(9, supervisorEmail);
											pstmt.setString(10, approval);

											pstmt.executeUpdate();
											response.sendRedirect("studentDetails.jsp");
										}
										%>
									</form>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-12">
					<div class="copyright">
						<p>Copyright? 2021. All rights reserved.</p>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- END MAIN CONTENT-->
	<!-- END PAGE CONTAINER-->


	<!-- Jquery JS-->
	<script src="vendor/jquery/jquery.min.js"></script>

	<!-- Vendor JS-->
	<script src="vendor/select2/select2.min.js"></script>
	<script src="vendor/datepicker/moment.min.js"></script>
	<script src="vendor/datepicker/daterangepicker.js"></script>

	<!-- Main JS-->
	<script src="js/global.js"></script>

	<!-- Jquery JS-->
	<script src="vendor/jquery-3.2.1.min.js"></script>

	<!-- Bootstrap JS-->
	<script src="vendor/bootstrap-4.1/popper.min.js"></script>
	<script src="vendor/bootstrap-4.1/bootstrap.min.js"></script>

	<!-- Vendor JS       -->
	<script src="vendor/slick/slick.min.js"></script>
	<script src="vendor/wow/wow.min.js"></script>
	<script src="vendor/animsition/animsition.min.js"></script>
	<script src="vendor/bootstrap-progressbar/bootstrap-progressbar.min.js"></script>
	<script src="vendor/counter-up/jquery.waypoints.min.js"></script>
	<script src="vendor/counter-up/jquery.counterup.min.js"></script>
	<script src="vendor/circle-progress/circle-progress.min.js"></script>
	<script src="vendor/perfect-scrollbar/perfect-scrollbar.js"></script>
	<script src="vendor/chartjs/Chart.bundle.min.js"></script>
	<script src="vendor/select2/select2.min.js"></script>

	<!-- Main JS-->
	<script src="js/main.js"></script>

	<!-- 	<script>
			function validateForm() {
				let x = document.forms["studentform1"]["studentId"].value;
				if (x == "") {
					alert("Student Id must be filled out");
					return false;
				}
				let y = document.forms["studentform1"]["studentId"].value;
				if (y == "") {
					alert("Name must be filled out");
					return false;
				}
				let z = document.forms["studentform1"]["studentId"].value;
				if (z == "") {
					alert("Name must be filled out");
					return false;
				}
				let a = document.forms["studentform1"]["studentId"].value;
				if (a == "") {
					alert("Name must be filled out");
					return false;
				}
			}
		</script> -->
</html>
<!-- end document-->







