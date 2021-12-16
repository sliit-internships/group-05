<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>



<!DOCTYPE html>
<html>
<head>
<!-- Required meta tags-->
<meta charset="UTF-8">
<meta name="viewport"
content="width=device-width, initial-scale=1, shrink-to-fit=no">
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
<%
String host = "jdbc:mysql://localhost:3306/admindb";
Statement stmt = null;
Connection con = null;
ResultSet rs = null;
PreparedStatement pstmt = null;
Class.forName("com.mysql.jdbc.Driver").newInstance();
con = DriverManager.getConnection(host, "root", "");
%>
<body class="animsition">
<div class="page-wrapper">
<!-- MAIN CONTENT-->
<div class="main-content" style="width:75%; margin: auto;">
<div class="section__content section__content--p30">
<div class="container-fluid">
<div class="page-wrapper font-robo">
<div class="card card-2">
<div class="card-heading">
<a href="superDetails.jsp"
style="margin-left: 50px; color: #fff; font-weight: 400; font-size: 15px; border: solid; padding: 10px 10px; border-radius: 5px;"
type="submit"> Go Back </a>
</div>
<div class="card-body">
<h2 class="title">Registration Info</h2>
<form method="post" action="">
<%
stmt = con.createStatement();
String id = request.getParameter("id");
int num = Integer.parseInt(id);
String data = "select * from super_details where super_id='" + num + "'";
rs = stmt.executeQuery(data);
while (rs.next()) {
%>
<input type="hidden" name="id"
value='<%=rs.getString("super_id")%>' />
<div class="col-8">
<div class="input-group">
<label for="email" style="font-size: 1.1rem;">Supervisor Name</label><input class="input--style-2"
type="text" placeholder="Your Name" name="super_name"
value='<%=rs.getString("super_name")%>'>
</div>
</div>
<div class="col-8">
<div class="input-group">
<div class="rs-select2 js-select-simple select--no-search">
<label for="email" style="font-size: 1.1rem;">Title</label><select
name="title" value='<%=rs.getString("super_title")%>'>
<option disabled="disabled" selected="selected">--
Select --</option>
<option value="IT manager">IT Manager</option>
<option value="IT director">IT Director</option>
<option value="Cloud security specialist">Cloud
Security Specialist</option>
<option value="Software engineer">Software
Engineer</option>
<option value="IT coordinator">IT Coordinator</option>
<option value="Database administrator">Database
administrator</option>
<option value="Data analyst">Data Analyst</option>
<option value="Back-end developer">Back-end
developer</option>
<option value="Full-stack developer">Full-stack
developer</option>
<option value="Web developer">Web Developer</option>
<option value="UI UX designer">UI UX Designer</option>
<option value="IT security engineer">IT Security
engineer</option>
<option value="Project manager">Project Manager</option>
</select>
<div class="select-dropdown"></div>
</div>
</div>
</div>
<div class="col-8">
<div class="input-group">
<label for="email" style="font-size: 1.1rem;">Supervisor
E-Mail</label><input class="input--style-2" type="text"
placeholder="Enter E-Mail" name="superEmail" value='<%=rs.getString("super_email")%>'>
</div>
</div>
<div class="col-8">
<div class="input-group">
<label for="email" style="font-size: 1.1rem;">Supervisor
Mobile Number</label><input class="input--style-2" type="text"
placeholder="Enter Mobile" name="superMobileNumber" value='<%=rs.getString("super_mobile")%>'>
</div>
</div>
<div class="col-8">
<div class="input-group">
<div class="rs-select2 js-select-simple select--no-search">
<label for="email" style="font-size: 1.1rem;">Supervisor
Company</label><select name="superCompany" value='<%=rs.getString("super_company")%>'>
<option disabled="disabled" selected="selected">--
Select --</option>
<option value="Company 1">Company 1</option>
<option value="Company 2">Company 2</option>
<option value="Company 3">Company 3</option>
<option value="Company 4">Company 4</option>
<option value="Company 5">Company 5</option>
<option value="Company 6">Company 6</option>
<option value="Company 7">Company 7</option>
<option value="Company 8">Company 8</option>
<option value="Company 9">Company 9</option>
<option value="Company 10">Company 10</option>
</select>
<div class="select-dropdown"></div>
</div>
</div>
</div>
<div class="col-8">
<div class="input-group">
<label for="email" style="font-size: 1.1rem;">Company
Address</label><input class="input--style-2" type="text"
placeholder="Enter Address" name="superComAddress" value='<%=rs.getString("super_company_address")%>'>
</div>
</div>

<%
}
%>
<div class="p-t-30">
<input type="submit" class="btn btn--radius btn--green"
value="Update">
</div>
<%
String a = request.getParameter("id");
String super_name = request.getParameter("super_name");
String title = request.getParameter("title");
String superEmail = request.getParameter("superEmail");
String superMobileNumber = request.getParameter("superMobileNumber");
String superCompany = request.getParameter("superCompany");
String superComAddress = request.getParameter("superComAddress");

if (a != null && super_name != null && title != null && superEmail != null && superMobileNumber != null
&& superCompany != null && superComAddress != null) {
String query = "update super_details set super_name=?,super_title=?,super_email=?,super_mobile=?,super_company=?,super_company_address=? where super_id= '"
+ a + "'";
pstmt = con.prepareStatement(query);
pstmt.setString(1, super_name);
pstmt.setString(2, title);
pstmt.setString(3, superEmail);
pstmt.setString(4, superMobileNumber);
pstmt.setString(5, superCompany);
pstmt.setString(6, superComAddress);

pstmt.executeUpdate();
response.sendRedirect("superDetails.jsp");
}
%>
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
<p>Copyright© 2021. All rights reserved.</p>
</div>
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



<!-- Vendor JS -->
<script src="vendor/slick/slick.min.js"></script>
<script src="vendor/wow/wow.min.js"></script>
<script src="vendor/animsition/animsition.min.js"></script>
<script src="vendor/bootstrap-progressbar/bootstrap-progressbar.min.js"></script>
<script src="vendor/counter-up/jquery.waypoints.min.js"></script>
<script src="vendor/counter-up/jquery.counterup.min.js"></script>
<script src="vendor/circle-progress/circle-progress.min.js"></script>
<script src="vendor/perfect-scrollbar/perfect-scrollbar.js"></script>
<script src="vendor/chartjs/Chart.bundle.min.js"></script>
<script src="vendor/select2/select2.min.js"></script>



<!-- Main JS-->
<script src="js/main.js"></script>



<!-- <script>
function validateForm() {
let x = document.forms["studentform1"]["studentId"].value;
if (x == "") {
alert("Student Id must be filled out");
return false;
}
let y = document.forms["studentform1"]["studentId"].value;
if (y == "") {
alert("Name must be filled out");
return false;
}
let z = document.forms["studentform1"]["studentId"].value;
if (z == "") {
alert("Name must be filled out");
return false;
}
let a = document.forms["studentform1"]["studentId"].value;
if (a == "") {
alert("Name must be filled out");
return false;
}
}
</script> -->
</html>
<!-- end document-->