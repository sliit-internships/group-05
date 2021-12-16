<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
/* String id = request.getParameter("id"); */
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "admindb";
String userid = "root";
String password = "root";
try {
	Class.forName(driver);
} catch (ClassNotFoundException e) {
	e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<!DOCTYPE html>
<html>

<head>
<script src="https://smtpjs.com/v3/smtp.js"></script>
<script type="text/javascript">
function sendEmail(){
	Email.send({

	Host : "smtp.gmail.com",
	SecureToken:"6b588f3d-d58e-49b0-b954-3b05bd91e4cb",
	Username : "sliit.irms@gmail.com",
	Password : "zhfflczoimlqazis",
	To : document.getElementById('supemail').value,
	From : "sliit.irms@gmail.com",
	Subject : "SLIIT Industrial Replacement",
	Body :  "This "+document.getElementById('id').value+" student has been mentioned you as the supervisor.Please follow below provided link to register with IRMS system"
	}).then(
	message => alert(message)
	);
	}
</script>
<!-- <!-- Required meta tags-->
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="au theme template">
<meta name="author" content="Hau Nguyen">
<meta name="keywords" content="au theme template">




<link href="css/font-face.css" rel="stylesheet" media="all">
<link href="vendor/font-awesome-4.7/css/font-awesome.min.css"
	rel="stylesheet" media="all">
<link href="vendor/font-awesome-5/css/fontawesome-all.min.css"
	rel="stylesheet" media="all">
<link href="vendor/mdi-font/css/material-design-iconic-font.min.css"
	rel="stylesheet" media="all">


<link href="vendor/bootstrap-4.1/bootstrap.min.css" rel="stylesheet"
	media="all">


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


<link href="./css/themeStudent.css" rel="stylesheet" media="all">


<link href="vendor/mdi-font/css/material-design-iconic-font.min.css"
	rel="stylesheet" media="all">
<link href="vendor/font-awesome-4.7/css/font-awesome.min.css"
	rel="stylesheet" media="all">

<link
	href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i"
	rel="stylesheet">


<link href="vendor/select2/select2.min.css" rel="stylesheet" media="all">
<link href="vendor/datepicker/daterangepicker.css" rel="stylesheet"
	media="all">
-->

<!-- Main CSS-->
<link href="./css/AddStudent.css" rel="stylesheet" media="all">
<link href="./css/StudentRegister_new.css" rel="stylesheet" media="all">


</head>
<body>

	<div class="page-container">
		<!-- HEADER DESKTOP-->
		<header class="header-desktop">
			<div class="section__content section__content--p30">
				<div class="container-fluid">
					<div class="header-wrap"
						style="display: flex; justify-content: right; align-items: right;">
						<!-- <form class="form-header" action="" method="POST">
								<input class="au-input au-input--xl" type="text" name="search"
									placeholder="Search for datas &amp; reports..." />
								<button class="au-btn--submit" type="submit">
									<i class="zmdi zmdi-search"></i>
								</button>
							</form> -->
						<div class="header-button">
							<div class="noti-wrap">
								<div class="noti__item js-item-menu">
									<i class="zmdi zmdi-comment-more"></i> <span class="quantity">2</span>
									<div class="mess-dropdown js-dropdown">
										<div class="mess__title">
											<p>You have 2 new message</p>
										</div>
										<div class="mess__item">
											<div class="image img-cir img-40">
												<img src="images/icon/avatar-06.jpg" alt="Michelle Moreno" />
											</div>
											<div class="content">
												<h6>Michelle Moreno</h6>
												<p>Have sent a photo</p>
												<span class="time">3 min ago</span>
											</div>
										</div>
										<div class="mess__item">
											<div class="image img-cir img-40">
												<img src="images/icon/avatar-04.jpg" alt="Diane Myers" />
											</div>
											<div class="content">
												<h6>Diane Myers</h6>
												<p>You are now connected on message</p>
												<span class="time">Yesterday</span>
											</div>
										</div>
										<div class="mess__footer">
											<a href="#">View all messages</a>
										</div>
									</div>
								</div>
								<div class="noti__item js-item-menu">
									<i class="zmdi zmdi-email"></i> <span class="quantity">1</span>
									<div class="email-dropdown js-dropdown">
										<div class="email__title">
											<p>You have 3 New Emails</p>
										</div>
										<div class="email__item">
											<div class="image img-cir img-40">
												<img src="images/icon/avatar-06.jpg" alt="Cynthia Harvey" />
											</div>
											<div class="content">
												<p>Meeting about new dashboard...</p>
												<span>Cynthia Harvey, 3 min ago</span>
											</div>
										</div>
										<div class="email__item">
											<div class="image img-cir img-40">
												<img src="images/icon/avatar-05.jpg" alt="Cynthia Harvey" />
											</div>
											<div class="content">
												<p>Meeting about new dashboard...</p>
												<span>Cynthia Harvey, Yesterday</span>
											</div>
										</div>
										<div class="email__item">
											<div class="image img-cir img-40">
												<img src="images/icon/avatar-04.jpg" alt="Cynthia Harvey" />
											</div>
											<div class="content">
												<p>Meeting about new dashboard...</p>
												<span>Cynthia Harvey, April 12,,2018</span>
											</div>
										</div>
										<div class="email__footer">
											<a href="#">See all emails</a>
										</div>
									</div>
								</div>
								<div class="noti__item js-item-menu">
									<i class="zmdi zmdi-notifications"></i> <span class="quantity">3</span>
									<div class="notifi-dropdown js-dropdown">
										<div class="notifi__title">
											<p>You have 3 Notifications</p>
										</div>
										<div class="notifi__item">
											<div class="bg-c1 img-cir img-40">
												<i class="zmdi zmdi-email-open"></i>
											</div>
											<div class="content">
												<p>You got a email notification</p>
												<span class="date">April 12, 2018 06:50</span>
											</div>
										</div>
										<div class="notifi__item">
											<div class="bg-c2 img-cir img-40">
												<i class="zmdi zmdi-account-box"></i>
											</div>
											<div class="content">
												<p>Your account has been blocked</p>
												<span class="date">April 12, 2018 06:50</span>
											</div>
										</div>
										<div class="notifi__item">
											<div class="bg-c3 img-cir img-40">
												<i class="zmdi zmdi-file-text"></i>
											</div>
											<div class="content">
												<p>You got a new file</p>
												<span class="date">April 12, 2018 06:50</span>
											</div>
										</div>
										<div class="notifi__footer">
											<a href="#">All notifications</a>
										</div>
									</div>
								</div>
							</div>
							<div class="account-wrap">
								<div class="account-item clearfix js-item-menu">
									<div class="image">
										<img src="images/icon/avatar-08.jpg" alt="saman" />
									</div>
									<%
									String email = (String) session.getAttribute("email");
									%>
									<div class="content">
										<a class="js-acc-btn" href="#">
											<%
											out.println(email);
											%>
										</a>
									</div>
									<div class="account-dropdown js-dropdown">
										<div class="info clearfix">
											<div class="image">
												<a href="#"> <img src="images/icon/avatar-08.jpg"
													alt="saman" />
												</a>
											</div>
											<div class="content">
												<h5 class="name">
													<a href="#"> <%
 out.println(email);
 %>
													</a>
												</h5>
											</div>
										</div>
										<div class="account-dropdown__body">
											<div class="account-dropdown__item">
												<a href="#"> <i class="zmdi zmdi-account"></i>Account
												</a>
											</div>
											<div class="account-dropdown__item">
												<a href="#"> <i class="zmdi zmdi-settings"></i>Settings
												</a>
											</div>
										</div>
										<div class="account-dropdown__footer">
											<a href="adminLogout.jsp"> <i class="zmdi zmdi-power"></i>Logout
											</a>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</header>
		<div class="main-content">
			<div class="section__content section__content--p30">
				<div class="container-fluid">
					<div class="page-wrapper font-robo">
						<div class="card card-2">
							<div class="card-heading">
								<a href="adminHomeStudent.jsp"
									style="margin-left: 50px; color: #fff; font-weight: 400; font-size: 15px; border: solid; padding: 10px 10px; border-radius: 5px;"
									type="submit"> Go Back </a>
							</div>
							<div class="card-body">
								<h2 class="title">Registration Info</h2>

								<form action="Internship_Student_Registration" method="get"
									name="form">
									<!-- class="form"  -->


									<div class="col-8">
										<div class="input-group">
											<label for="email" style="font-size: 1.1rem;">SLIIT
												Student Identification Number</label><input name="id" id="id"
												type="text" class="input-control"
												placeholder="Student ID here"><i
												class="fa fa-check-circle"></i> <i
												class="fa fa-exclamation-circle"></i> <small>Error
												Message</small>
										</div>
									</div>
									<div class="col-8">
										<div class="input-group">
											<label for="email" style="font-size: 1.1rem;">Student
												Name</label><input name="name" id="name" type="text"
												class="input-control" placeholder="Enter your username"><i
												class="fa fa-check-circle"></i> <i
												class="fa fa-exclamation-circle"></i> <small>Error
												Message</small>
										</div>
									</div>
									<div class="col-8">
										<div class="input-group">
											<label for="email" style="font-size: 1.1rem;">Student
												Email</label><input name="email" id="email" type="text"
												class="input-control" placeholder="Enter your email"><i
												class="fa fa-check-circle"></i> <i
												class="fa fa-exclamation-circle"></i> <small>Error
												Message</small>
										</div>
									</div>

									<div class="col-8">
										<div class="input-group">
											<span for="email" style="font-size: 1.1rem;">Mobile
												Number</span><input name="mobile" id="mobile" type="text"
												class="input-control" placeholder="Enter your mobilenumber"><i
												class="fa fa-check-circle"></i> <i
												class="fa fa-exclamation-circle"></i> <small>Error
												Message</small>
										</div>
									</div>

									<div class="col-8">
										<div class="input-group">
											<div class="rs-select2 js-select-simple select--no-search">
												<label for="seeInternshipField" style="font-size: 1.1rem;">Current
													Year</label><select class="form-control" id="seeInternshipField"
													name="seeInternshipField">
													<option disabled="disabled" selected="selected">Select
														your Studying Year</option>
													<option value="1">1</option>
													<option value="2">2</option>
													<option value="3">3</option>
													<option value="4">4</option>
													<option value="prorata">Prorata</option>
												</select>
												<div class="select-dropdown"></div>
											</div>
										</div>
									</div>

									<div class="col-8">
										<div class="input-group">
											<div class="rs-select2 js-select-simple select--no-search">
												<label for="email" style="font-size: 1.1rem;">Current
													Semester</label><select id="semester" class="form-control"
													name="semester">
													<option value="Select Your Semester" disabled="disabled"
														selected="selected">Select Your Semester</option>
													<option>January - June</option>
													<option>June - November</option>
												</select>
												<div class="select-dropdown"></div>
											</div>
										</div>
									</div>

									<div class="col-8">
										<div class="input-group">
											<div class="rs-select2 js-select-simple select--no-search">
												<label for="email" style="font-size: 1.1rem;">Specialization</label>
												<select id="specialization" onchange="" class="form-control"
													name="specialization">
													<option label="Select Your Specialization"
														disabled="disabled" selected="selected">Select
														Your Specialization</option>
													<option>Information Technology</option>
													<option>Software Engineer</option>
													<option>Cyber Security</option>
													<option>Data Science</option>
													<option>Networking</option>
													<option>Information Security Engineer</option>
													<option>Interactive Media</option>
												</select>
												<div class="select-dropdown"></div>
											</div>
										</div>
									</div>

									<div class="col-8" id="otherFieldDiv">
										<div class="input-group">
											<div class="rs-select2 js-select-simple select--no-search">
												<label for="email" style="font-size: 1.1rem;">Found
													An Internship</label> <select class="form-control"
													id="seeInternFound" name="seeInternFound">
													<option value="no">NO</option>
													<option value="yes">YES</option>

												</select>
												<div class="select-dropdown"></div>
											</div>
										</div>
									</div>
									<div class="col-8" id="otherFieldGroupDiv">
										<div class="input-group">
											<label for="email" style="font-size: 1.1rem;">Spervisor
												E-Mail</label> <input type="text" class="form-control w-100"
												id="supemail" name="supemail"><i
												class="fa fa-check-circle"></i> <i
												class="fa fa-exclamation-circle"></i> <small>Error
												Message</small>
										</div>
									</div>


									<div class="p-t-30">
										<input class="btn" type="submit" value="SAVE" id="submit"
											onclick="sendEmail()">
									</div>
								</form>
								<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
								<script
									src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/js/bootstrap.min.js"></script>
								<script src="js/hide-show-fields-form.js"></script>
								<script src="js/InternshipStudentReg_new.js"></script>

							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
</body>
<script>
const form = document.getElementById('form');
const id = document.getElementById('id');
const name = document.getElementById('name');
const email = document.getElementById('email');
const mobile = document.getElementById('mobile');
const seeInternshipField = document.getElementById('seeInternshipField');
const semester = document.getElementById('semester');
const specialization = document.getElementById('specialization');
const supemail = document.getElementById('supemail');

form1.addEventListener('submit', e => {
	e.preventDefault();

	checkInputs();
});

function checkInputs() {
	// get the values from the inputs
	const idValue = id.value.trim();
	const nameValue = name.value.trim();
	const emailValue = email.value.trim();
	const mobileValue = mobile.value.trim();
	const seeInternshipFieldValue = seeInternshipField.value.trim();
	const semestervalue = semester.value.trim();
	const specializationValue = specialization.value.trim();
	const supemailValue = supemail.value.trim();

	if (idValue === '') {
		// show error
		// add error class
		setErrorFor(id, 'ID cannot be empty');
	} else if (!isId(idValue)) {
		setErrorFor(id, 'Not a valid ID number (EX: IT12345678)');
	} else {
		// add success class
		setSuccessFor(id);
	}

	if (nameValue === '') {
		// show error
		// add error class
		setErrorFor(name, 'Name cannot be empty');
	} else if (!isName(nameValue)) {
		setErrorFor(name, 'Not a valid Name');
	} else {
		// add success class
		setSuccessFor(name);
	}

	if (emailValue === '') {
		// show error
		// add error class
		setErrorFor(email, 'Email Address cannot be empty');
	} else if (!isEmail(emailValue)) {
		setErrorFor(email, 'Not a valid Email Address');
	} else {
		// add success class
		setSuccessFor(email);
	}

	if (mobileValue === '') {
		// show error
		// add error class
		setErrorFor(mobile, 'Mobile cannot be empty');
	} else if (!isMobile(mobileValue)) {
		setErrorFor(mobile, 'Not a valid Mobile Number (EX: 712345678)');
	} else {
		// add success class
		setSuccessFor(mobile);
	}

	if (supemailValue === '') {
		// show error
		// add error class
		setErrorFor(supemail, 'Supervisor Email Address cannot be empty');
	} else if (!issupEmail(supemailValue)) {
		serError(supemail, 'Not a valid Email Address');
	} else {
		// add success class
		setSuccessFor(supemail);
	}
}

function setErrorFor(input, message) {
	const formControl = input.parentElement; // .form-group
	const small = formControl.querySelector('small');

	// add error message inside small
	small.innerText = message;

	// add error class
	formControl.className = 'input-group error';
}

function setSuccessFor(input) {
	const formControl = input.parentElement;
	formControl.className = 'input-group success';
}

function isId(idValue) {
	return /^((IT)[0-9]{8})$/.test(idValue);
}

function isName(nameValue) {
	return /[a-zA-Z]/.test(nameValue);
}

function isEmail(emailValue) {
	return /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/.test(emailValue);
}

function isMobile(mobileValue) {
	return /^([0-9]{9})$/.test(mobileValue);
}

function issupEmail(supemailValue) {
	return /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/.test(supemailValue);
}


</script>
</html>