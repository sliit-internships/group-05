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

			<form name="form" action="forgetPasswordAction" method="post">

				<div class="form-group" >
					<label for="email">SLIIT Student Email</label> <input type="text"
						name="email" id="email" class="w-100"
						placeholder="itxxxxxxxx@my.sliit.lk" required> <span
						class="check-icon"></span>
				</div>

				<div class="form-group mb-1" style="margin-top:-5px;">
				<label for="security question" style="display: flex; justify-content: right; align-items: right;">Security Question</label>
					<select class="w-100" name="security questions">
						<option class="w-100" value="What was your first car ?">What
							was your first car ?</option>
						<option class="w-100"
							value="What was the name of your first pet ?">What was
							the name of your first pet ?</option>
						<option class="w-100" value="What was your first school name ?">What
							was your first school name ?</option>
						<option class="w-100" value="What was your mothers birthday ?">What
							was your mothers birthday ?</option>
					</select> <span class="check-icon"></span>
				</div>
				<div class="form-group mb-1" style="margin-top:-5px;">
					<label for="answer" >Your Answer</label> <input type="text"
						name="answer" id="answer" class="w-100"
						placeholder="answer" required> <span class="check-icon"></span>
				</div>
				<div class="form-group mb-1" style="margin-top:35px;">
					<label for="new password">Enter Your New Password</label> <input type="password"
						name="newPassword" id="id_password" class="w-100"
						placeholder="enter password" required><i class="far fa-eye" id="togglePassword" style=" margin-left: -20px; cursor: pointer;"></i> <span class="check-icon"></span>
				</div>
				<div class="form-group mb-1" style="margin-top:35px;">
					<label for="reenter password">Re-enter Your New Password</label> <input type="password"
						name="newPassword1" id="id_password1" class="w-100"
						placeholder="Re-enter password" required><i class="far fa-eye" id="togglePassword1" style=" margin-left: -20px; cursor: pointer;"></i> <span class="check-icon"></span>
				</div>


				<div class="form-group text-left mb-2" style="margin-top: -10px">
				</div>

				<div class="form-group mb-0">
					<input type="submit" value="Save" class="w-100" id="submit"
						onClick="return checkEquel()">
				</div>
			</form>
			<small>You Want to Login Please <a href="systemLogin.jsp">Click here</a></small>
			<%
			String msg = request.getParameter("msg");
			if("done".equals(msg))
			{
			%>
			<h3>Password Change Successfully...!</h3>
			<%} %>
			<%
			if("invalid".equals(msg))
			{
			%>
			<h3>Something went wrong...!<br> Try again...!</h3>
			<%} %>
		</div>
		<!-- end form-wrapper -->
	</div>
	<!-- end wrapper -->

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

</body>
</html>