<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>Reset Password</title>
<link rel="stylesheet" href="./css/ForgetPassword.css">

<style>
::placeholder {
	color: gray;
	font-size: 15px;
	margin: 0 auto;
}

select, option {
	display: block;
	margin: 0 auto;
	margin-bottom: 40px;
	margin-top:40px;
	color: #505050;
	background-color: #efeff4;
	border: none;
	border-radius: 5px;
	font-size: 0.95rem;
	padding: 7px 0 5px 7px;
}
</style>

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css">
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
				<h4 style="margin: -5px">Are You Want to Reset Your Password</h4>
			</div>
			<h1 class="form-title">Please Fill this Form</h1>

			<form action="forgetPasswordProcess.jsp" method="post">

				<div class="form-group" >
					<label for="email">SLIIT Student Email</label> <input type="text"
						name="email" id="email" class="w-100"
						placeholder="itxxxxxxxx@my.sliit.lk" required> <span
						class="check-icon"></span>
				</div>

				<div class="form-group text-left mb-2" style="margin-top: -10px">
				</div>

				<div class="form-group mb-0">
					<input type="submit" value="Send" class="w-100">
				</div>
			</form>
			<small>You Want to Login Please <a href="systemLogin.jsp">Click here</a></small>
		</div>
		<!-- end form-wrapper -->
	</div>
	<!-- end wrapper -->
<!-- 
 <script>
		function checkEquel() {
			var p = document.form.newPassword.value;
			var p1 = document.form.newPassword1.value;

			if (p == p1) {
				return true;
			} else {
				alert("Password are not equal! Please Check...!");
				return false;
			}
		}
	</script>
	
	<script>
		function validateform() {
			var email = document.form.email.value;
			var password = document.form.newPassword.value;
			var password1 = document.form.newPassword1.value;
			
			if (email == null || email == "") {
				alert("SLIIT Email can't be blank");
				email.focus;
				return false;
			} 
			if (password.length < 6) {
				alert("Password must be at least 6 characters long & a mix of letters (upper and lower case), numbers, and symbols");
				password.focus;
				return false;
			} 
			if (password1.length < 6) {
				alert("Password must be at least 6 characters long & a mix of letters (upper and lower case), numbers, and symbols");
				password1.focus;
				return false;
			}
			
			var email = document.getElementById('email');
			var filter = /^([a-zA-Z0-9_\-\.]+)\+?([a-zA-Z0-9_\-\.]+)@sliit.lk$/;
			
			if (!filter.test(email.value)) {
				alert('Please provide a valid SLIIT Email address');
				email.focus;
				return false;
			}
		}
	</script>
	
	<script>
	  const togglePassword = document.querySelector('#togglePassword');
	  const password = document.querySelector('#id_password');
	
	  togglePassword.addEventListener('click', function (e) {
		    // toggle the type attribute
		    const type = password.getAttribute('type') === 'password' ? 'text' : 'password';
		    password.setAttribute('type', type);
		    // toggle the eye slash icon
		    this.classList.toggle('fa-eye-slash');
		});
	  
	 
	  const password1 = document.querySelector('#id_password1');
	  const togglePassword1 = document.querySelector('#togglePassword1');
	  
	  togglePassword1.addEventListener('click', function (e) {
		    // toggle the type attribute
		    const type = password1.getAttribute('type') === 'password' ? 'text' : 'password';
		    password1.setAttribute('type', type);
		    // toggle the eye slash icon
		    this.classList.toggle('fa-eye-slash');
		});
	   
	  </script>
 -->
</body>
</html>