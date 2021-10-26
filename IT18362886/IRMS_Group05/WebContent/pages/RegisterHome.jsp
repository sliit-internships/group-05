<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>Sign in</title>
<link rel="stylesheet" href="../css/RegisterHome.css">
</head>
<body>

	<div class="wrapper">
		<a href="#" class="menu-toggle"> <span class="bar"></span> <span
			class="bar"></span> <span class="bar"></span>
		</a>

		<div class="quote-wrapper"></div>
		<!-- end quote-wrapper -->

		<div class="form-wrapper">
			<div>
				<h4 style="margin: -5px">WELCOME TO SLIIT IRM SYSTEM</h4>
			</div>
			<h1 class="form-title">Sign up</h1>

			<form action="<%=request.getContextPath()%> /register" method="post">
				<div class="form-group">
					<label for="username">User name</label> <input type="text"
						name="userName" id="username" class="w-100" autofocus
						placeholder="Dilshan" title="Must be longer than 4 characters"
						required> <span class="check-icon"></span>
				</div>

				<div class="form-group">
					<label for="email">Email Address</label> <input type="email"
						name="email" id="email" class="w-100"
						placeholder="Dilshan123@gmail.com" required> <span
						class="check-icon"></span>
				</div>

				<div class="form-group mb-1">
					<label for="password">Password</label> <input type="password"
						name="password" id="password" class="w-100"
						title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters"
						placeholder="password" required> <span class="check-icon"></span>
				</div>

				<div class="form-group text-left mb-2">
					<input type="checkbox" checked> <label for="" class="terms">
						I agree to the <a href="#">Terms &amp; Conditions</a>
					</label>
				</div>

				<div class="form-group mb-0">
					<input type="submit" value="Create account" class="w-100"
						id="submit">
				</div>
			</form>

			<small>Already Have an account? <a href="#">Click here</a></small>
		</div>
		<!-- end form-wrapper -->
	</div>
	<!-- end wrapper -->


</body>
</html>