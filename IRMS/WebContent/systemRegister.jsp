<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>SignUp</title>
<link rel="stylesheet" href="./css/StudentRegister.css">

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
	margin-top: 20px;
	color: 505050;
	background-color: #efeff4;
	border: none;
	border-radius: 5px;
	font-size: 0.95rem;
	padding: 7px 0 5px 7px;
}

/* The message box is shown when the user clicks on the password field */
#message {
	background: #f1f1f1;
	display: none;
	position: relative;
	width: 60%;
	color: #000;
	padding: 0px;
	margin-top: 10px;
	margin-left: 115px;
	border-radius: 5px;
}

#message p {
	font-size: 0.7rem;
}

/* Add a green text color and a checkmark when the requirements are right */
.valid {
	color: green;
}

.valid:before {
	position: relative;
	left: -35px;
	/*   content: "✔"; */
}

/* Add a red text color and an "x" when the requirements are wrong */
.invalid {
	color: red;
}

.invalid:before {
	position: relative;
	left: -35px;
	/* content: "✖"; */
}
</style>

<!-- <script>
	$(document).ready(function($) {
		$('#myPassword').strength_meter();

		$('#mySecondPassword').strength_meter({
			inputClass : 'c_strength_input',
			strengthMeterClass : 'c_strength_meter',
			toggleButtonClass : 'c_button_strength'
		});

		$("#myThirdPassword").strength_meter({
			strengthMeterClass : 't_strength_meter'
		});
	});
</script> -->



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
			<h1 class="form-title">SignUp</h1>

			<form name="myform" action="register" method="post">
				<div class="form-group">
					<label for="username">User name</label> <input type="text"
						name="name" id="name" class="w-100" autofocus
						placeholder="Jhon Smith" title="Must be longer than 4 characters"
						required> <span class="check-icon"></span>
				</div>

				<div class="form-group">
					<label for="email">SLIIT Email Address</label> <input type="text"
						name="email" id="email" class="w-100"
						placeholder="xxxxxxxx@sliit.lk" required> <span
						class="check-icon"></span>
				</div>

				<div class="form-group mb-1">
					<label for="password">Password</label> <input type="password"
						name="password" id="password" class="w-100"
						placeholder="Enter the password"
						pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}"
						title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters"
						required> <span class="check-icon"></span>
				</div>

				<div id="message">
					<h5 style="margin-bottom: -4px;">Password must contain the
						following:</h5>
					<p id="letter" class="invalid">
						A <b>lowercase</b> letter
					</p>
					<p id="capital" class="invalid">
						A <b>capital (uppercase)</b> letter
					</p>
					<p id="number" class="invalid">
						A <b>number</b>
					</p>
					<p id="length" class="invalid">
						Minimum <b>8 characters</b>
					</p>
				</div>
				<div class="form-group mb-1" style="margin-top: 40px;">
					<label for="securityQuestion"
						style="display: flex; justify-content: right; align-items: right;">Security
						Question</label> <select class="w-100" name="securityQuestion">
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
				<div class="form-group mb-1" style="margin-top: 0px;">
					<label for="answer">Your Answer</label> <input type="text"
						name="answer" id="answer" class="w-100" placeholder="Answer"
						required> <span class="check-icon"></span>
				</div>

				<div class="form-group text-left mb-2" style="margin-top: 10px">
					<input type="checkbox" checked> <label for="" class="terms">
						I agree to the <a href="#">Terms &amp; Conditions</a>
					</label>
				</div>

				<div class="form-group mb-0">
					<input type="submit" value="Create account" class="w-100"
						id="submit" onClick="return validateform()">
				</div>
			</form>

			<small>Already Have an account? <a href="systemLogin.jsp">Click
					here</a></small>
		</div>
		<!-- end form-wrapper -->
	</div>
	<!-- end wrapper -->


	<script>
		function validateform() {
			var name = document.myform.name.value;
			if (name == null || name == "") {
				alert("Name can't be blank");
				name.focus;
				return false;
			}

			var email = document.myform.email.value;
			if (email == null || email == "") {
				alert("SLIIT Email can't be blank");
				email.focus;
				return false;
			}

			var email = document.getElementById('email');
			var filter = /^([a-zA-Z0-9_\-\.]+)\+?([a-zA-Z0-9_\-\.]+)@sliit.lk$/;

			if (!filter.test(email.value)) {
				alert('Please provide a valid SLIIT Email address');
				email.focus;
				return false;
			}

			/* var myPassword = document.myform.myPassword.value;
			if (myPassword.length < 6) {
				alert("Password must be at least 6 characters long.");
				myPassword.focus;
				return false;
			}  */

		}
	</script>

	<script>
		var myInput = document.getElementById("password");
		var letter = document.getElementById("letter");
		var capital = document.getElementById("capital");
		var number = document.getElementById("number");
		var length = document.getElementById("length");

		// When the user clicks on the password field, show the message box
		myInput.onfocus = function() {
			document.getElementById("message").style.display = "block";
		}

		// When the user clicks outside of the password field, hide the message box
		myInput.onblur = function() {
			document.getElementById("message").style.display = "none";
		}

		// When the user starts to type something inside the password field
		myInput.onkeyup = function() {
			// Validate lowercase letters
			var lowerCaseLetters = /[a-z]/g;
			if (myInput.value.match(lowerCaseLetters)) {
				letter.classList.remove("invalid");
				letter.classList.add("valid");
			} else {
				letter.classList.remove("valid");
				letter.classList.add("invalid");
			}

			// Validate capital letters
			var upperCaseLetters = /[A-Z]/g;
			if (myInput.value.match(upperCaseLetters)) {
				capital.classList.remove("invalid");
				capital.classList.add("valid");
			} else {
				capital.classList.remove("valid");
				capital.classList.add("invalid");
			}

			// Validate numbers
			var numbers = /[0-9]/g;
			if (myInput.value.match(numbers)) {
				number.classList.remove("invalid");
				number.classList.add("valid");
			} else {
				number.classList.remove("valid");
				number.classList.add("invalid");
			}

			// Validate length
			if (myInput.value.length >= 8) {
				length.classList.remove("invalid");
				length.classList.add("valid");
			} else {
				length.classList.remove("valid");
				length.classList.add("invalid");
			}
		}
	</script>


	<!-- <script type="text/javascript">
		function checkEquel() {
			var p = document.myform.studentPassword.value;
			var p1 = document.myform.studentPassword1.value;

			if (p == p1) {
				return true;
			} else {
				alert("Password are not equal! Please Check...!");
				return false;
			}
		}
	</script> -->

</body>
</html>