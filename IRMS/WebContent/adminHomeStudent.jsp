<!DOCTYPE html>
<html lang="en">

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
<link href="./css/theme.css" rel="stylesheet" media="all">

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
						<li class="active has-sub"><a class="js-arrow"
							href=""> <i class="fas fa-tachometer-alt"></i>Dashboard
						</a></li>
						<li><a href=""> <i
								class="fas fa-chart-bar"></i>Student Details
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
						<li class="active has-sub"><a class="js-arrow"
							href="adminHomeStudent.jsp"> <i class="fas fa-tachometer-alt"></i>Dashboard
						</a></li>
						<li><a href="InternshipStudentReg.jsp"> <i
								class="fas fa-chart-bar"></i>Student Details
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
						<div class="header-wrap">
							<form class="form-header" action="" method="POST">
								<input class="au-input au-input--xl" type="text" name="search"
									placeholder="Search for datas &amp; reports..." />
								<button class="au-btn--submit" type="submit">
									<i class="zmdi zmdi-search"></i>
								</button>
							</form>
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
														<a href="#"> <% out.println(email); 
														
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
						<div class="row m-t-25">
							<div class="col-sm-6 col-lg-3">
								<div class="overview-item overview-item--c1">
									<div class="overview__inner">
										<div class="overview-box clearfix">
											<div class="icon">
												<i class="zmdi zmdi-account-o"></i>
											</div>
											<div class="text">
												<h2>255</h2>
												<span>members now in program</span>
											</div>
										</div>
										<div class="overview-chart">
											<canvas id="widgetChart1"></canvas>
										</div>
									</div>
								</div>
							</div>
							<div class="col-sm-6 col-lg-3">
								<div class="overview-item overview-item--c2">
									<div class="overview__inner">
										<div class="overview-box clearfix">
											<div class="icon">
												<i class="zmdi zmdi-account-o"></i>
											</div>
											<div class="text">
												<h2>24</h2>
												<span>new student joined</span>
											</div>
										</div>
										<div class="overview-chart">
											<canvas id="widgetChart2"></canvas>
										</div>
									</div>
								</div>
							</div>
							<div class="col-sm-6 col-lg-3">
								<div class="overview-item overview-item--c3">
									<div class="overview__inner">
										<div class="overview-box clearfix">
											<div class="icon">
												<i class="zmdi zmdi-calendar-note"></i>
											</div>
											<div class="text">
												<h2>5</h2>
												<span>task have to done in this week</span>
											</div>
										</div>
										<div class="overview-chart">
											<canvas id="widgetChart3"></canvas>
										</div>
									</div>
								</div>
							</div>
							<div class="col-sm-6 col-lg-3">
								<div class="overview-item overview-item--c4">
									<div class="overview__inner">
										<div class="overview-box clearfix">
											<div class="icon">
												<i class="zmdi zmdi-book"></i>
											</div>
											<div class="text">
												<h2>75</h2>
												<span>total of student done this course</span>
											</div>
										</div>
										<div class="overview-chart">
											<canvas id="widgetChart4"></canvas>
										</div>
									</div>
								</div>
							</div>
						</div>
						<!-- <div class="row">
                            <div class="col-lg-6">
                                <div class="au-card recent-report">
                                    <div class="au-card-inner">
                                        <h3 class="title-2">recent reports</h3>
                                        <div class="chart-info">
                                            <div class="chart-info__left">
                                                <div class="chart-note">
                                                    <span class="dot dot--blue"></span>
                                                    <span>products</span>
                                                </div>
                                                <div class="chart-note mr-0">
                                                    <span class="dot dot--green"></span>
                                                    <span>services</span>
                                                </div>
                                            </div>
                                            <div class="chart-info__right">
                                                <div class="chart-statis">
                                                    <span class="index incre">
                                                        <i class="zmdi zmdi-long-arrow-up"></i>25%</span>
                                                    <span class="label">products</span>
                                                </div>
                                                <div class="chart-statis mr-0">
                                                    <span class="index decre">
                                                        <i class="zmdi zmdi-long-arrow-down"></i>10%</span>
                                                    <span class="label">services</span>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="recent-report__chart">
                                            <canvas id="recent-rep-chart"></canvas>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="au-card chart-percent-card">
                                    <div class="au-card-inner">
                                        <h3 class="title-2 tm-b-5">char by %</h3>
                                        <div class="row no-gutters">
                                            <div class="col-xl-6">
                                                <div class="chart-note-wrap">
                                                    <div class="chart-note mr-0 d-block">
                                                        <span class="dot dot--blue"></span>
                                                        <span>products</span>
                                                    </div>
                                                    <div class="chart-note mr-0 d-block">
                                                        <span class="dot dot--red"></span>
                                                        <span>services</span>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-xl-6">
                                                <div class="percent-chart">
                                                    <canvas id="percent-chart"></canvas>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div> -->
						<div class="row">
							<div class="col-lg-9">
								<h2 class="title-1 m-b-25">Tasks Summary</h2>
								<div class="table-responsive table--no-card m-b-40">
									<table
										class="table table-borderless table-striped table-earning">
										<thead>
											<tr>
												<th>date</th>
												<th>Student ID</th>
												<th>Student Name</th>
												<th class="text-right">Task Done</th>
												<th class="text-right">Task have to Done</th>
												<th class="text-right">GPA</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td>9/22/2021</td>
												<td>ST01</td>
												<td>Dilshan I.H</td>
												<td class="text-right">14</td>
												<td class="text-right">1</td>
												<td class="text-right">2.9</td>
											</tr>
											<tr>
												<td>9/22/2021</td>
												<td>ST02</td>
												<td>Radesh K.H</td>
												<td class="text-right">5</td>
												<td class="text-right">10</td>
												<td class="text-right">2.1</td>
											</tr>
											<tr>
												<td>9/23/2021</td>
												<td>ST03</td>
												<td>Ashan O.D</td>
												<td class="text-right">8</td>
												<td class="text-right">7</td>
												<td class="text-right">2.0</td>
											</tr>
											<tr>
												<td>9/24/2021</td>
												<td>ST04</td>
												<td>Deneth K.H</td>
												<td class="text-right">5</td>
												<td class="text-right">10</td>
												<td class="text-right">1.8</td>
											</tr>
											<tr>
												<td>9/26/2021</td>
												<td>ST05</td>
												<td>Tanisha G.</td>
												<td class="text-right">7</td>
												<td class="text-right">8</td>
												<td class="text-right">1.9</td>
											</tr>
											<tr>
												<td>9/28/2021</td>
												<td>ST06</td>
												<td>Herath J.K</td>
												<td class="text-right">10</td>
												<td class="text-right">5</td>
												<td class="text-right">1.6</td>
											</tr>
											<tr>
												<td>9/28/2021</td>
												<td>ST07</td>
												<td>Sithara K.</td>
												<td class="text-right">6</td>
												<td class="text-right">9</td>
												<td class="text-right">1.7</td>
											</tr>
											<tr>
												<td>9/28/2021</td>
												<td>ST08</td>
												<td>Gihan H.H</td>
												<td class="text-right">12</td>
												<td class="text-right">3</td>
												<td class="text-right">2.1</td>
											</tr>
										</tbody>
									</table>
								</div>
							</div>
							<div class="col-lg-3">
								<h2 class="title-1 m-b-25">Ongoing Task</h2>
								<div
									class="au-card au-card--bg-blue au-card-top-countries m-b-40">
									<div class="au-card-inner">
										<div class="table-responsive">
											<table class="table table-top-countries">
												<tbody>
													<tr>
														<td>Task 5</td>
														<td class="text-right">15/11</td>
													</tr>
													<tr>
														<td>Task 6</td>
														<td class="text-right">18/11</td>
													</tr>
													<tr>
														<td>Task 7</td>
														<td class="text-right">18/11</td>
													</tr>
													<tr>
														<td>Task 8</td>
														<td class="text-right">25/11</td>
													</tr>
													<tr>
														<td>Task 9</td>
														<td class="text-right">25/11</td>
													</tr>
													<tr>
														<td>Task 10</td>
														<td class="text-right">25/11</td>
													</tr>
													<tr>
														<td>Task 11</td>
														<td class="text-right">28/11</td>
													</tr>
													<tr>
														<td>Task 12</td>
														<td class="text-right">05/12</td>
													</tr>
												</tbody>
											</table>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-lg-6">
								<div class="au-card au-card--no-shadow au-card--no-pad m-b-40">
									<div class="au-card-title"
										style="background-image: url('images/bg-title-01.jpg');">
										<div class="bg-overlay bg-overlay--blue"></div>
										<h3>
											<i class="zmdi zmdi-account-calendar"></i>29 November, 2020
										</h3>
										<button class="au-btn-plus">
											<i class="zmdi zmdi-plus"></i>
										</button>
									</div>
									<div class="au-task js-list-load">
										<div class="au-task__title">
											<p>Events that Have to Done</p>
										</div>
										<div class="au-task-list js-scrollbar3">
											<div class="au-task__item au-task__item--danger">
												<div class="au-task__item-inner">
													<h5 class="task">
														<a href="#">Meeting with the Industry Person 1</a>
													</h5>
													<span class="time">10:00 AM</span>
												</div>
											</div>
											<div class="au-task__item au-task__item--warning">
												<div class="au-task__item-inner">
													<h5 class="task">
														<a href="#">Meeting with the Mr.Sunil Pradeep</a>
													</h5>
													<span class="time">12:00 AM</span>
												</div>
											</div>
											<div class="au-task__item au-task__item--primary">
												<div class="au-task__item-inner">
													<h5 class="task">
														<a href="#">Webinar for the 2nd Year Student</a>
													</h5>
													<span class="time">02:00 PM</span>
												</div>
											</div>
											<div class="au-task__item au-task__item--success">
												<div class="au-task__item-inner">
													<h5 class="task">
														<a href="#">Meeting 01</a>
													</h5>
													<span class="time">03:00 PM</span>
												</div>
											</div>
											<div class="au-task__item au-task__item--danger js-load-item">
												<div class="au-task__item-inner">
													<h5 class="task">
														<a href="#">Meeting 02</a>
													</h5>
													<span class="time">4:00 PM</span>
												</div>
											</div>
											<div
												class="au-task__item au-task__item--warning js-load-item">
												<div class="au-task__item-inner">
													<h5 class="task">
														<a href="#">Meeting 03</a>
													</h5>
													<span class="time">6:30 PM</span>
												</div>
											</div>
										</div>
										<div class="au-task__footer">
											<button class="au-btn au-btn-load js-load-btn">load
												more</button>
										</div>
									</div>
								</div>
							</div>
							<div class="col-lg-6">
								<div class="au-card au-card--no-shadow au-card--no-pad m-b-40">
									<div class="au-card-title"
										style="background-image: url('images/bg-title-02.jpg');">
										<div class="bg-overlay bg-overlay--blue"></div>
										<h3>
											<i class="zmdi zmdi-comment-text"></i>New Messages
										</h3>
										<!--  <button class="au-btn-plus">
                                            <i class="zmdi zmdi-plus"></i>
                                        </button> -->
									</div>
									<div class="au-inbox-wrap js-inbox-wrap">
										<div class="au-message js-list-load">
											<div class="au-message__noti">
												<p>
													You Have <span>5</span> new messages
												</p>
											</div>
											<div class="au-message-list">
												<div class="au-message__item unread">
													<div class="au-message__item-inner">
														<div class="au-message__item-text">
															<div class="avatar-wrap">
																<div class="avatar">
																	<img src="images/icon/avatar-02.jpg" alt="Tanisha T.">
																</div>
															</div>
															<div class="text">
																<h5 class="name">Tanisha T.</h5>
																<p>Have sent a new massage</p>
															</div>
														</div>
														<div class="au-message__item-time">
															<span>12 Min ago</span>
														</div>
													</div>
												</div>
												<div class="au-message__item unread">
													<div class="au-message__item-inner">
														<div class="au-message__item-text">
															<div class="avatar-wrap online">
																<div class="avatar">
																	<img src="images/icon/avatar-03.jpg" alt="Gihan G.">
																</div>
															</div>
															<div class="text">
																<h5 class="name">Gihan G.</h5>
																<p>You are now connected on message</p>
															</div>
														</div>
														<div class="au-message__item-time">
															<span>11:00 PM</span>
														</div>
													</div>
												</div>
												<div class="au-message__item">
													<div class="au-message__item-inner">
														<div class="au-message__item-text">
															<div class="avatar-wrap online">
																<div class="avatar">
																	<img src="images/icon/avatar-04.jpg" alt="Bandara B.">
																</div>
															</div>
															<div class="text">
																<h5 class="name">Bandara B.</h5>
																<p>You are now connected on message</p>
															</div>
														</div>
														<div class="au-message__item-time">
															<span>Yesterday</span>
														</div>
													</div>
												</div>
												<div class="au-message__item">
													<div class="au-message__item-inner">
														<div class="au-message__item-text">
															<div class="avatar-wrap">
																<div class="avatar">
																	<img src="images/icon/avatar-05.jpg" alt="Sathurjan S.">
																</div>
															</div>
															<div class="text">
																<h5 class="name">Sathurjan S.</h5>
																<p>You are now connected on message</p>
															</div>
														</div>
														<div class="au-message__item-time">
															<span>Sunday</span>
														</div>
													</div>
												</div>
												<div class="au-message__item js-load-item">
													<div class="au-message__item-inner">
														<div class="au-message__item-text">
															<div class="avatar-wrap online">
																<div class="avatar">
																	<img src="images/icon/avatar-04.jpg" alt="name1">
																</div>
															</div>
															<div class="text">
																<h5 class="name">name1</h5>
																<p>You are now connected on message</p>
															</div>
														</div>
														<div class="au-message__item-time">
															<span>Yesterday</span>
														</div>
													</div>
												</div>
												<div class="au-message__item js-load-item">
													<div class="au-message__item-inner">
														<div class="au-message__item-text">
															<div class="avatar-wrap">
																<div class="avatar">
																	<img src="images/icon/avatar-05.jpg" alt="name2">
																</div>
															</div>
															<div class="text">
																<h5 class="name">name2</h5>
																<p>You are now connected on message</p>
															</div>
														</div>
														<div class="au-message__item-time">
															<span>Sunday</span>
														</div>
													</div>
												</div>
											</div>
											<div class="au-message__footer">
												<button class="au-btn au-btn-load js-load-btn">load
													more</button>
											</div>
										</div>
										<div class="au-chat">
											<div class="au-chat__title">
												<div class="au-chat-info">
													<div class="avatar-wrap online">
														<div class="avatar avatar--small">
															<img src="images/icon/avatar-02.jpg" alt="name3">
														</div>
													</div>
													<span class="nick"> <a href="#">name3</a>
													</span>
												</div>
											</div>
											<div class="au-chat__content">
												<div class="recei-mess-wrap">
													<span class="mess-time">12 Min ago</span>
													<div class="recei-mess__inner">
														<div class="avatar avatar--tiny">
															<img src="images/icon/avatar-02.jpg" alt="name1">
														</div>
														<div class="recei-mess-list">
															<div class="recei-mess">Dear sir, I have a problem
																with phase 1?</div>
															<div class="recei-mess">Could you please tell me
																where i have to submit my files?</div>
														</div>
													</div>
												</div>
												<div class="send-mess-wrap">
													<span class="mess-time">30 Sec ago</span>
													<div class="send-mess__inner">
														<div class="send-mess-list">
															<div class="send-mess">I will inform you with the
																email</div>
														</div>
													</div>
												</div>
											</div>
											<div class="au-chat-textfield">
												<form class="au-form-icon">
													<input class="au-input au-input--full au-input--h65"
														type="text" placeholder="Type a message">
													<button class="au-input-icon">
														<i class="zmdi zmdi-camera"></i>
													</button>
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
									<p>Copyrightę 2021. All rights reserved.</p>
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
