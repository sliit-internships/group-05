<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>Login</title>
<link rel="stylesheet" href="./css/StudentLogin.css">
<link rel="stylesheet" href="./css/test.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css">
<script>
function myFunction() {
	  var x = document.getElementById("password");
	  if (x.type === "password") {
	    x.type = "text";
	  } else {
	    x.type = "password";
	  }
	} 


</script>
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
				<h4 style="margin: -5px">WELCOME TO SLIIT IRMS SYSTEM</h4>
			</div>
			<h1 class="form-title">Login</h1>

			<form id="form" action="login" method="post" onsubmit="return validation(); required();">
 
				<div class="form-group">
				   
					<label for="email"><i class="fa fa-envelope icon"></i> SLIIT Email</label> <input type="text"
						name="email" id="email" class="w-100"
						placeholder="itxxxxxxxx@my.sliit.lk" > <span
						class="check-icon"></span>
						<span id="text"></span>
				</div>

				<div class="form-group mb-1">
					<label for="password"><i class="fa fa-key icon"></i> Password</label> 
					
					<input type="password"
						name="password" id="password" class="w-100"
						placeholder="enter password " >
						 <span class="check-icon"></span>
						 <span id="text2"></span>
						 
				</div>
				<div style="margin-left: -34%;">
				
				<input class="form-check-input" type="checkbox" onclick="showPassword()">Show Password 
				
				</div>
				
			
				<div class="">

					<H5 class="" >Login As</h5> 
					<label
						class="radio-inline">Admin <input type="radio" class="form-check-input"
						checked="checked" name="radio" id="radio" value="admin"> <span
						class="checkmark"></span>
					</label> 
					
					<label class="radio-inline">Student <input type="radio" class="form-check-input"
						name="radio" id="radio" value="student"> <span
						class="checkmark"></span>
					</label> 
					
					<label class="radio-inline">Supervisor <input type="radio" class="form-check-input"
						name="radio" id="supervisor" value="supervisor"> <span
						class="checkmark"></span>
					</label> 
					
					<label class="radio-inline">Coordinator <input type="radio" class="form-check-input"
						name="radio" id="coordinator" value="coordinator"> <span
						class="checkmark"></span>
					</label>
				</div>
<br>
			

		

				

				<div class="form-group mb-0">
					<input type="submit" onclick="IsEmpty();" value="Login" class="w-100" id="submit">
				</div>
			</form>
			<small>You didn't have an Account.<br /> Please Create
				Account <a href="systemRegPage.jsp">Click here</a></small>
		</div>
		<!-- end form-wrapper -->
	</div>
	<!-- end wrapper -->
	
	<script type="text/javascript">
	
	function validation() {
		var form = document.getElementById("form");
		var email = document.getElementById("email").value;
		var text = document.getElementById("text");
		var pattern = /^[^ ]+@[^ ]+\.[a-z]{2,3}$/;
		//var pattern = /^[^ ]+@my.sliit.lk$/gm;

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
	
	 function IsEmpty() {
		 var email = document.getElementById("password").value;
		 var text2 = document.getElementById("text2");

	      if (email == "") {
	        
	        text2.innerHTML = "Password Can not be empty";
			text2.style.color = "#ff0000";
			  return false;
	      }else {
	    	  text2.innerHTML = "Password not empty";
				text2.style.color = "#00ff00";
				
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
	
	</script>


</body>
</html>