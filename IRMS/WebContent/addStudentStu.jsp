<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<!-- Required meta tags-->
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="au theme template">
<meta name="author" content="Hau Nguyen">
<meta name="keywords" content="au theme template">


<!-- Title Page-->
<title>Student Dashboard</title>

<!-- Fontfaces CSS-->
<link href="css/font-face.css" rel="stylesheet" media="all">
<link href="vendor/font-awesome-4.7/css/font-awesome.min.css"
	rel="stylesheet" media="all">
<link href="vendor/font-awesome-5/css/fontawesome-all.min.css"
	rel="stylesheet" media="all">
<link href="vendor/mdi-font/css/material-design-iconic-font.min.css"
	rel="stylesheet" media="all">

<!-- Bootstrap CSS-->
<link href="vendor/bootstrap-4.1/bootstrap.min.css" rel="stylesheet"
	media="all">

<!-- Vendor CSS-->
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

<!-- Main CSS-->
<link href="./css/themeStudent.css" rel="stylesheet" media="all">


<!-- Icons font CSS-->
<link href="vendor/mdi-font/css/material-design-iconic-font.min.css"
	rel="stylesheet" media="all">
<link href="vendor/font-awesome-4.7/css/font-awesome.min.css"
	rel="stylesheet" media="all">
<!-- Font special for pages-->
<link
	href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i"
	rel="stylesheet">

<!-- Vendor CSS-->
<link href="vendor/select2/select2.min.css" rel="stylesheet" media="all">
<link href="vendor/datepicker/daterangepicker.css" rel="stylesheet"
	media="all">

<!-- Main CSS-->
<link href="css/AddStudent.css" rel="stylesheet" media="all">

</head>

<body class="animsition">
	<div class="page-wrapper">
		<!-- HEADER MOBILE-->
		<header class="header-mobile d-block d-lg-none">
			<div class="header-mobile__bar">
				<div class="container-fluid">
					<div class="header-mobile-inner">
						<a class="logo" href="adminHome.jsp" style="font-size: 35px;">
							<span>SLIIT IRMS </span>
						</a>
						<button class="hamburger hamburger--slider" type="button">
							<span class="hamburger-box"> <span class="hamburger-inner"></span>
							</span>
						</button>
					</div>
				</div>
			</div>
			<nav class="navbar-mobile">
				<div class="container-fluid">
					<ul class="navbar-mobile__list list-unstyled">
						<li><a href="adminHome.jsp"> <i
								class="fas fa-tachometer-alt"></i>Dashboard
						</a></li>
						<li class="active has-sub"><a class="js-arrow"
							href=""> <i class="fas fa-chart-bar"></i>Student
								Details
						</a></li>
						<li><a href=""> <i class="fas fa-table"></i>Supervisor
								Details
						</a></li>
						<li><a href="#"> <i class="far fa-check-square"></i>Forms
								Details
						</a></li>
						<li><a href=""> <i
								class="fas fa-calendar-alt"></i>Calendar
						</a></li>

					</ul>
				</div>
			</nav>
		</header>
		<!-- END HEADER MOBILE-->

		<!-- MENU SIDEBAR-->
		<aside class="menu-sidebar d-none d-lg-block">
			<div class="logo">
				<a href="adminHome.jsp" style="font-size: 35px;"> <span>SLIIT
						IRMS </span>
				</a>
			</div>
			<div class="menu-sidebar__content js-scrollbar1">
				<nav class="navbar-sidebar">
					<ul class="list-unstyled navbar__list">
						<li><a href="adminHomeStudent.jsp"> <i
								class="fas fa-tachometer-alt"></i>Dashboard
						</a></li>
						<li class="active has-sub"><a class="js-arrow"
							href="addStudentStu.jsp"> <i class="fas fa-chart-bar"></i>Student
								Details
						</a></li>
						


					</ul>
				</nav>
			</div>
		</aside>
		<!-- END MENU SIDEBAR-->

		<!-- PAGE CONTAINER-->
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
			<!-- HEADER DESKTOP-->

			<!-- MAIN CONTENT-->
			<div class="main-content">
				<div class="section__content section__content--p30">
					<div class="container-fluid">
						<div class="page-wrapper font-robo">
							<div class="card card-2">
								<div class="card-heading">
									<a href="studentDetails.jsp"
										style="margin-left: 50px; color: #fff; font-weight: 400; font-size: 15px; border: solid; padding: 10px 10px; border-radius: 5px;"
										type="submit"> Go Back </a>
								</div>
								<div class="card-body">
									<h2 class="title">Registration Info</h2>
									<form name="studentform1" method="post"
										action="addStudentProcess.jsp">

										<div class="col-8">
											<div class="input-group">
												<label for="email" style="font-size: 1.1rem;">SLIIT
													Student Identification Number</label><input class="input--style-2"
													type="text" placeholder="Student ID" name="studentId">
											</div>
										</div>
										<div class="col-8">
											<div class="input-group">
												<label for="email" style="font-size: 1.1rem;">Student
													Name</label><input class="input--style-2" type="text"
													placeholder="Student Name" name="studentName">
											</div>
										</div>
										<div class="col-8">
											<div class="input-group">
												<div class="rs-select2 js-select-simple select--no-search">
													<label for="email" style="font-size: 1.1rem;">Specialization</label><select
														name="specialization">
														<option disabled="disabled" selected="selected">--
															Select --</option>
														<option value="IT">IT</option>
														<option value="SE">SE</option>
														<option value="CSNE">CSNE</option>
														<option value="ISE">ISE</option>
														<option value="CS">CS</option>
														<option value="IM">IM</option>
													</select>
													<div class="select-dropdown"></div>
												</div>
											</div>
										</div>
										<div class="col-8">
											<div class="input-group">
												<label for="email" style="font-size: 1.1rem;">Student
													E-Mail</label><input class="input--style-2" type="text"
													placeholder="Student E-Mail" name="studentEmail">
											</div>
										</div>
										<div class="col-8">
											<div class="input-group">
												<label for="email" style="font-size: 1.1rem;">Supervisor
													E-Mail</label><input class="input--style-2" type="text"
													placeholder="Supervisor E-Mail" name="supervisorEmail">
											</div>
										</div>
										<div class="col-8">
											<div class="input-group">
												<label for="email" style="font-size: 1.1rem;">Mobile
													Number</label><input class="input--style-2" type="text"
													placeholder="Mobile Number" name="stuMobileNumber">
											</div>
										</div>

										<div class="col-8">
											<div class="input-group">
												<label for="email" style="font-size: 1.1rem;">Internship
													Start Date</label><input class="input--style-2 js-datepicker"
													type="text" placeholder="Internship Start Date"
													name="internshipStartDate"> <i
													class="zmdi zmdi-calendar-note input-icon js-btn-calendar"></i>
											</div>
										</div>

										<div class="col-8">
											<div class="input-group">
												<div class="rs-select2 js-select-simple select--no-search">
													<label for="email" style="font-size: 1.1rem;">Current
														Year of Registration</label><select name="currentYear">
														<option disabled="disabled" selected="selected">--
															Select --</option>
														<option value="Year 1">Year 1</option>
														<option value="Year 2">Year 2</option>
														<option value="Year 3">Year 3</option>
														<option value="Year 4">Year 4</option>
													</select>
													<div class="select-dropdown"></div>
												</div>
											</div>
										</div>

										<div class="col-8">
											<div class="input-group">
												<label for="email" style="font-size: 1.1rem;">Plan
													to Complete 2nd Year</label><input
													class="input--style-2 js-datepicker" type="text"
													placeholder="Plan to Complete 2nd Year"
													name="plantoComplete2ndYear"> <i
													class="zmdi zmdi-calendar-note input-icon js-btn-calendar"></i>
											</div>
										</div>

										<div class="col-8">
											<div class="input-group">
												<div class="rs-select2 js-select-simple select--no-search">
													<label for="email" style="font-size: 1.1rem;">Period
														of Complete 2nd Year</label><select name="periodComplete2year">
														<option disabled="disabled" selected="selected">--
															Select --</option>
														<option value="January - June">January - June</option>
														<option value="June - November">June - November</option>
													</select>
													<div class="select-dropdown"></div>
												</div>
											</div>
										</div>
										<div class="p-t-30">
											<input type="submit" class="btn btn--radius btn--green"
												value="Add">
										</div>
									</form>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-12">
					<div class="copyright">
						<p>Copyright? 2021. All rights reserved.</p>
					</div>
				</div>
			</div>

		</div>
		<!-- END MAIN CONTENT-->
		<!-- END PAGE CONTAINER-->


		<!-- Jquery JS-->
		<script src="vendor/jquery/jquery.min.js"></script>
		<!-- Vendor JS-->
		<script src="vendor/select2/select2.min.js"></script>
		<script src="vendor/datepicker/moment.min.js"></script>
		<script src="vendor/datepicker/daterangepicker.js"></script>

		<!-- Main JS-->
		<script src="js/global.js"></script>

		<!-- Jquery JS-->
		<script src="vendor/jquery-3.2.1.min.js"></script>
		<!-- Bootstrap JS-->
		<script src="vendor/bootstrap-4.1/popper.min.js"></script>
		<script src="vendor/bootstrap-4.1/bootstrap.min.js"></script>
		<!-- Vendor JS       -->
		<script src="vendor/slick/slick.min.js">
			
		</script>
		<script src="vendor/wow/wow.min.js"></script>
		<script src="vendor/animsition/animsition.min.js"></script>
		<script
			src="vendor/bootstrap-progressbar/bootstrap-progressbar.min.js">
			
		</script>
		<script src="vendor/counter-up/jquery.waypoints.min.js"></script>
		<script src="vendor/counter-up/jquery.counterup.min.js">
			
		</script>
		<script src="vendor/circle-progress/circle-progress.min.js"></script>
		<script src="vendor/perfect-scrollbar/perfect-scrollbar.js"></script>
		<script src="vendor/chartjs/Chart.bundle.min.js"></script>
		<script src="vendor/select2/select2.min.js">
			
		</script>

		<!-- Main JS-->
		<script src="js/main.js"></script>
</body>

</html>
<!-- end document-->



