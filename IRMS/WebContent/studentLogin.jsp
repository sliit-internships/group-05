<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>Login</title>
<link rel="stylesheet" href="./css/StudentLogin.css">
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
			<h1 class="form-title">Login</h1>

			<form action="login" method="post">
				
				<div class="form-group">
					<label for="email">SLIIT Student Email</label> <input type="text"
						name="email" id="email" class="w-100"
						placeholder="itxxxxxxxx@my.sliit.lk" required> <span
						class="check-icon"></span>
				</div>

				<div class="form-group mb-1">
					<label for="password">Password</label> <input type="password"
						name="password" id="password" class="w-100"
						title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters"
						placeholder="enter password" required> <span class="check-icon"></span>
				</div>

				<div class="form-group text-left mb-2">
					<input type="checkbox" checked> <label for="" class="terms">
						I agree to the <a href="#">Terms &amp; Conditions</a>
					</label>
				</div>

				<div class="form-group mb-0">
					<input type="submit" value="Login" class="w-100"
						id="submit">
				</div>
			</form>
			<small>You didn't have an Account.<br/> Please Create Account <a href="studentRegister.jsp">Click here</a></small>
		</div>
		<!-- end form-wrapper -->
	</div>
	<!-- end wrapper -->


</body>
</html>