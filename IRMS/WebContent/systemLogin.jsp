<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>Login</title>
<link rel="stylesheet" href="./css/StudentLogin.css">

<style>
::placeholder {
  color: gray;
  font-size:15px;
  margin:0 auto;
}
</style>

<link href="http://www.jqueryscript.net/css/jquerysctipttop.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="./css/PasswordJquary.css">
<link rel="stylesheet" type="text/css" href="./css/password_strength.css">

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

			<form name="myform" action="login" method="post">

				<div class="form-group">
					<label for="email">SLIIT Student Email</label> <input type="text"
						name="email" id="email" class="w-100"
						placeholder="itxxxxxxxx@my.sliit.lk" > <span
						class="check-icon"></span>
				</div>

				<div class="form-group mb-1">
					<label for="password">Password</label> <input type="password"
						name="password" id="password" class="w-100"
						title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters"
						placeholder="enter password" > <span class="check-icon"></span>
				</div>
				<small>Forget Password <a href="forgetPassword.jsp">Click here</a></small>

				<div class="form-group text-left mb-2" style="margin-top:20px">
					<input type="checkbox" checked> <label for="" class="terms">
						I agree to the <a href="#">Terms &amp; Conditions</a>
					</label>
				</div>

				<div class="form-group mb-0">
					<input type="submit" value="Login" class="w-100" id="submit"
						onClick="return validateform()">
				</div>
			</form>
			<small>You didn't have an Account.<br /> Please Create
				Account <a href="systemRegister.jsp">Click here</a></small>
		</div>
		<!-- end form-wrapper -->
	</div>
	<!-- end wrapper -->


	<script>
		function validateform() {
			var email = document.myform.email.value;
			var password = document.myform.password.value;
			
			if (email == null || email == "") {
				alert("Email can't be blank");
				email.focus;
				return false;
			} 
			if (password.length < 6) {
				alert("Password must be at least 6 characters long.");
				password.focus;
				return false;
			} 
			
			var email = document.getElementById('email');
			var filter = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
			
			if (!filter.test(email.value)) {
				alert('Please provide a valid email address');
				email.focus;
				return false;
			}
		}
	</script>


</body>
</html>