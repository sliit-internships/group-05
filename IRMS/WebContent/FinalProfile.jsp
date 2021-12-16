<!DOCTYPE html>
<html lang="en">
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<%@ page import="javax.sql.*"%>
<%@ page import="java.io.*"%>
<%@ page import="jakarta.servlet.*"%>
<%@ page import="jakarta.servlet.http.*"%>
<head>
<meta charset="ISO-8859-1">
<title>Student Profile</title>
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
</head>
<body>
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
											<img src="images/icon/saman.jpg" alt="saman" />
										</div>
										<div class="content">
											<a class="js-acc-btn" href="#">Saman Gunawardana</a>
										</div>
										<div class="account-dropdown js-dropdown">
											<div class="info clearfix">
												<div class="image">
													<a href="#"> <img src="images/icon/saman.jpg"
														alt="saman" />
													</a>
												</div>
												<div class="content">
													<h5 class="name">
														<a href="#">Saman Gunawardana</a>
													</h5>
													<span class="email">saman.g@sliit.lk</span>
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
												<a href="#"> <i class="zmdi zmdi-power"></i>Logout
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
	<div class="row">
		<div class="col-lg-9">
			<h2 class="title-1 m-b-25"  align="center">Student Details</h2>
			<div class="table-responsive table--no-card m-b-40">
				<form  method="get">
					<table  class="table table-borderless table-striped table-earning">
					
						<%
						try {
							Class.forName("com.mysql.jdbc.Driver");
							Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/admindb", "root", "root");
							Statement stmt = con.createStatement();
							String z = request.getParameter("email");
							String sql = "select * from admindb.internship_registered_student where email='" + z + "'";
							ResultSet rs = stmt.executeQuery(sql);
							while (rs.next()) {
								String id = rs.getString("id");
								String name = rs.getString("name");
								String email = rs.getString("email");
								String mobile = rs.getString("mobile");
								String year = rs.getString("year");
								String semester = rs.getString("semester");
								String specialization = rs.getString("specialization");
								String foundintern = rs.getString("foundintern");
								String supervisoremail = rs.getString("supervisoremail");
								String acceptancetype = rs.getString("acceptancetype");	
							if(supervisoremail.isEmpty())	{
								
								
								
								
						%>
						

						
							<tr><th>ID	:</th>
								<td><input type="text" id="id" name="name" value="<%=rs.getString("id")%>" disabled></td>
							</tr>
							<tr><th>Name	:</th>
								<td><%=name%></td>
								</tr>
							<tr><th>Student Email	:</th>
								<td><%=email%></td></tr>
							<tr><th>Student Contact Number :</th>
								<td><%=mobile%></td>
								</tr>
							<tr><th>Registered Year:</th>
								<td><%=year%></td>
								</tr>
							<tr><th>Specialization	:</th>
								<td><%=specialization%></td>
								</tr>
								
							<tr><td colspan="2" align="center"><a href="InternshipStudentReg.jsp"><input  type="button" value="Update Profile" ></a></td></tr>
							
						

							
					


						<%}else{
							%>
							<tr><th>ID	:</th>
								<td><%=id%></td>
							</tr>
							<tr><th>Name	:</th>
								<td><%=name%></td>
								</tr>
							<tr><th>Student Email	:</th>
								<td><%=email%></td></tr>
							<tr><th>Student Contact Number :</th>
								<td><%=mobile%></td>
								</tr>
							<tr><th>Registered Year:</th>
								<td><%=year%></td>
								</tr>
							<tr><th>Specialization	:</th>
								<td><%=specialization%></td>
								</tr>
							<tr><th>Found Intern	:</th>
								<td><%=foundintern%></td>
								</tr>
							<tr><th>Supervisor Email	:</th>
								<td><%=supervisoremail%></td>
								</tr>
						

							
						<%
						}
						}

						} catch (Exception e) {
						e.printStackTrace();
						}
						%>
					</table>
				</form>
			</div>
		</div>
	</div>
</body>
</html>

