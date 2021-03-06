<!DOCTYPE html>
<html lang="en">

<head>
<head>
<!-- Required meta tags-->
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="au theme template">
<meta name="author" content="Hau Nguyen">
<meta name="keywords" content="au theme template">
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String id = request.getParameter("id");
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "admindb";
String userid = "root";
String password = "";
try {
	Class.forName(driver);
} catch (ClassNotFoundException e) {
	e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>

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
<link href="./css/themeSuper.css" rel="stylesheet" media="all">

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
						<li><a href="studentDetails.jsp"> <i
								class="fas fa-chart-bar"></i>Student Details
						</a></li>
						<li class="active has-sub"><a class="js-arrow"
							href="superDetails.jsp"> <i class="fas fa-table"></i>Supervisor
								Details
						</a></li>
						<li class=""><a class="js-arrow" href="companyDetails.jsp">
								<i class="fas fa-table"></i>Company Details
						</a></li>
						<li><a href="#"> <i class="far fa-check-square"></i>Forms
								Details
						</a></li>
						<li><a href="adminCalander.jsp"> <i
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
						<li><a href="adminHome.jsp"> <i
								class="fas fa-tachometer-alt"></i>Dashboard
						</a></li>
						<li><a href="studentDetails.jsp"> <i
								class="fas fa-chart-bar"></i>Student Details
						</a></li>
						<li class="active has-sub"><a class="js-arrow"
							href="superDetails.jsp"> <i class="fas fa-table"></i>Supervisor
								Details
						</a></li>
						<li class=""><a class="js-arrow" href="companyDetails.jsp">
								<i class="fas fa-table"></i>Company Details
						</a></li>
						<li><a href="formDetails.jsp"> <i
								class="far fa-check-square"></i>Forms Details
						</a></li>
						<li><a href="adminCalander.jsp"> <i
								class="fas fa-calendar-alt"></i>Calendar
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
						<!-- <div class="row">
                            <div class="col-md-12">
                                <div class="overview-wrap">
                                    <h2 class="title-1">overview</h2>
                                    <button class="au-btn au-btn-icon au-btn--blue">
                                        <i class="zmdi zmdi-plus"></i>add item</button>
                                </div>
                            </div>
                        </div> -->

						<div class="row">
							<div class="col-lg-9">
								<h2 class="title-1 m-b-25">Summary</h2>
								<form class="form-header" action="" method="get"
									style="margin-bottom: 25px;">
									<input class="au-input au-input--xl" type="text" name="search1"
										placeholder="Use Student ID or Email..." />
									<button class="au-btn--submit" type="submit">
										<i class="zmdi zmdi-search"></i>
									</button>
									<a href="addSupervisor.jsp" style="margin-left: 20px"
										class="au-btn--submit" type="submit"> <i
										class="zmdi zmdi-plus"></i>
									</a>
								</form>
								<div class="table-responsive table--no-card m-b-40">
									<table
										class="table table-borderless table-striped table-earning">
										<thead>
											<tr>
												<th class="text-right">Supervisor Name</th>
												<th class="text-right">Title</th>
												<th class="text-right">Email Address</th>
												<th class="text-right">Contact No</th>
												<th class="text-right">Supervisor Company</th>
												<th class="text-right">Company Address</th>
											</tr>
										</thead>
										<tbody>
											<%
											try {
												Class.forName("com.mysql.jdbc.Driver");
												Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/admindb", "root", "");
												Statement stmt = null;
												ResultSet rs = null;
												stmt = con.createStatement();
												String query = request.getParameter("search2");
												String data;

												if (query != null) {
													data = "select * from super_details where super_name like '%" + query + "%' or super_title like '%" + query
													+ "%' or super_email like '%" + query + "%' or super_mobile like '%" + query
													+ "%' or super_company like '%" + query + "%' or super_company_address like '%" + query + "%'";

												} else {
													data = "select * from super_details order by super_id asc";
												}

												rs = stmt.executeQuery(data);
												while (rs.next()) {
											%>
											<tr>

												<td><%=rs.getString("super_name")%></td>
												<td><%=rs.getString("super_title")%></td>
												<td><%=rs.getString("super_email")%></td>
												<td><%=rs.getString("super_mobile")%></td>
												<td><%=rs.getString("super_company")%></td>
												<td><%=rs.getString("super_company_address")%></td>
												<td><a
													href="updateSuper.jsp?id=<%=rs.getString("super_id")%>">update</a></td>
												<td><a
													href="deleteSuper.jsp?id=<%=rs.getString("super_id")%>">Delete</a></td>



											</tr>
											<%
											}

											} catch (Exception e) {
											e.printStackTrace();
											}
											%>
										</tbody>
									</table>
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
				</div>
			</div>
			<!-- END MAIN CONTENT-->
			<!-- END PAGE CONTAINER-->
		</div>

	</div>

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
	<script src="vendor/bootstrap-progressbar/bootstrap-progressbar.min.js">
		
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



