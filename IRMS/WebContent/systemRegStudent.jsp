<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>SignUp</title>
<link rel="stylesheet" href="./css/StudentRegister.css">
<link rel="stylesheet" href="./css/test.css">

<script src="https://smtpjs.com/v3/smtp.js"></script>
<script type="text/javascript">
let x = Math.floor((Math.random() * 99999) + 1);
document.getElementById("demo").innerHTML = x;


function sendEmail(){
Email.send({

Host : "smtp.gmail.com",
SecureToken:"6b588f3d-d58e-49b0-b954-3b05bd91e4cb",
Username : "sliit.irms@gmail.com",
Password : "zhfflczoimlqazis",
To : document.getElementById('studentEmail').value,
From : "sliit.irms@gmail.com",
Subject : "SLIIT Industrial Replacement Password Secure",
Body :  "This "+document.getElementById('studentEmail').value+" Account Password is "+document.getElementById('studentPassword').value+" . Please Keep both username and password secure."
}).then(
message => alert(message)
);
}
</script>
</head>

<body>

	<div class="wrapper">
		<a href="#" class="menu-toggle"> <span class="bar"></span> <span
			class="bar"></span> <span class="bar"></span>
		</a>

		<div class="quote-wrapper"></div>
		<!-- end quote-wrapper -->

		<div class="form-wrapper"
			style="background: black; opacity: 0.8; color: white;">
			<div>
				<h4 style="margin: -5px">WELCOME TO SLIIT IRMS SYSTEM</h4>
			</div>
			<h1 style="color: white;" class="form-title">Student Sign up</h1>

			<form id="form" action="StudentSysReg" onsubmit="return validation(); verifyPassword(); check(); sendEmail();" method="post">
			
				<div class="form-group">
					<label for="email">Email Address</label> 
					<input type="text"
						name="studentEmail" id="studentEmail" class="w-100"
						placeholder="itxxxxxxxx@my.sliit.lk" >
					<span id="text"></span>
				</div>

				<div class="form-group mb-1">
					<label for="password">Password</label> <input type="password"
						name="studentPassword" id="studentPassword" class="w-100" onkeydown="verifyPassword()"
						title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters"
						placeholder="AbCd@$1#2gaT" > <span
						class="check-icon"></span>
						<span id="passwordText"></span>
				</div>
				
			
				<div style="margin-left: -34%;">
					<input class="form-check-input" type="checkbox" onclick="showPassword()">Show Password 
				</div>
				
				<br>
				

				<div class="form-group text-left mb-2">
					<input type="checkbox" id="checkTerms" onkeydown="check()"> <label for="" class="terms">
						I agree to the <a href="#">Terms &amp; Conditions</a>
					</label>
					<span id="textCheck"></span>
				</div>

				<div class="form-group mb-0">
					<input type="submit" value="Create account" class="w-100" onclick="sendEmail()"
						id="submit">
				</div>
			</form>
			
			

			<small>Already Have an account? <a href="studentLogin.jsp">Click
					here</a></small>
		</div>
		<!-- end form-wrapper -->
	</div>
	<!-- end wrapper -->


	<script type="text/javascript">
	
	
	function check() {
		  // Get the checkbox
		  var checkBox = document.getElementById("checkTerms");
		  // Get the output text
		  var textCheck = document.getElementById("textCheck");

		  // If the checkbox is checked, display the output text
		  if (checkBox.checked == true){
			  return true; 
		  } else {
			  textCheck.innerHTML = "Please agree to thenTerms & Conditions";
			  textCheck.style.color = "#ff0000";
			  return false; 
			  
		  }
		}
	
	
	
		function validation() {
			var form = document.getElementById("form");
			var email = document.getElementById("studentEmail").value;
			var text = document.getElementById("text");
			//var pattern = /^[^ ]+@[^ ]+\.[a-z]{2,3}$/;
			var pattern = /^[^ ]+@my.sliit.lk$/gm;

			if (email.match(pattern)) {
				form.classList.add("valid");
				form.classList.remove("invalid");
				text.innerHTML = "Your Email Address is Valid";
				text.style.color = "#00ff00";
			} else {
				form.classList.remove("valid")
				form.classList.add("invalid")
				text.innerHTML = "Please Enter Your SLIIT Email Address";
				text.style.color = "#ff0000";
			    return false;
				
			}

			if (email = "") {
				form.classList.remove("valid");
				form.classList.remove("invalid");
				text.innerHTML = "";
				text.style.color = "#00ff00";
			}
		}
		
		function showPassword() {
			  var x = document.getElementById("studentPassword");
			  if (x.type === "password") {
			    x.type = "text";
			  } else {
			    x.type = "password";
			  }
			} 
	
		function verifyPassword() {  
			  var pw = document.getElementById("studentPassword").value;  
			  var passwordText = document.getElementById("passwordText");
			  
			  //check empty password field  
			  if(pw == "") {  
			
			     passwordText.innerHTML = "Fill the password please";
			     passwordText.style.color = "#ff0000";
			     return false;  
			  }  
			   
			 //minimum password length validation  
			  if(pw.length < 8) {  
			     passwordText.innerHTML = "Password length must be atleast 8 characters";
			     passwordText.style.color = "#ff0000";
			     return false;  
			  }  
			  
			//maximum length of password validation  
			  if(pw.length > 15) {  
			     passwordText.innerHTML = "Password length must not exceed 15 characters";
			     passwordText.style.color = "#ff0000";
			     return false;  
			  } else {  
				  passwordText.innerHTML = "Your password is Suitable";
				  passwordText.style.color = "#00ff00"; 
			  }  
			}  
		
		  function pwdConf() {
		        var password = document.getElementById("studentPassword").value;
		        var confirmPassword = document.getElementById("confirmPassword").value;
		        var text = document.getElementById("text");
		        
		        if (password != confirmPassword) {
		        	confirmPwd.innerHTML = "Passwords do not match";
		        	confirmPwd.style.color = "#ff0000"; 
		            return false;
		        }else{
		        	confirmPwd.innerHTML = "Passwords is match";
		        	confirmPwd.style.color = "#00ff00"; 
		        }
		        return true;
		    }

	</script>

</body>

</html>