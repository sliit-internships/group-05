<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>SignUp</title>
<link rel="stylesheet" href="./css/StudentRegister.css">
<link rel="stylesheet" href="./css/test.css">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<style>
.button5 {
	background-color: black;
	color: white;
	border: 2px solid #555555;
}

.button5:hover {
	background-color: #555555;
	color: white;
}
</style>
</head>
<body>

	<div class="wrapper">
		<!-- <a href="#" class="menu-toggle"> <span class="bar"></span> <span
			class="bar"></span> <span class="bar"></span>
		</a> -->

		<div class="quote-wrapper"></div>
		<!-- end quote-wrapper -->

		<div class="form-wrapper">
			<div>
				<h4 style="margin: -5px">WELCOME TO SLIIT IRM SYSTEM</h4>
			</div>
			<h1 class="form-title">System SignUp</h1>

			<div class="d-grid gap-2 col-6 mx-auto">
				<button class="btn   button5" type="button" onclick="window.location.href='systemRegStudent.jsp';">Student</button></a>
				<button class="btn   button5" type="button" onclick="window.location.href='systemRegSupervisor.jsp';">Supervisor</button>
				<button class="btn   button5" type="button" onclick="window.location.href='systemRegCoordinator.jsp';">Coordinator</button>
			</div>

			<small>Already Have an account? <a href="studentLogin.jsp">Click
					here</a></small>
		</div>
		<!-- end form-wrapper -->
	</div>
	<!-- end wrapper -->


</body>
</html>