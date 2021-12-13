<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%

String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/admindb";
String userid = "root";
String password = "11111";
Statement stmt = null;
Connection con = null;
ResultSet resultSet = null;
PreparedStatement pstatement = null;
Class.forName("com.mysql.jdbc.Driver").newInstance();
con = DriverManager.getConnection("jdbc:mysql://localhost:3306/admindb", "root", "11111");
%>
<!DOCTYPE html>
<html>
<body>
	<h1>Update data from database</h1>

	<form method="post" action="">
		<%
	stmt = con.createStatement();
	String u = request.getParameter("u");
	int num = Integer.parseInt(u);
	String data = "select * from student_details where id='"+num+"'";
	resultSet = stmt.executeQuery(data);
	while(resultSet.next()){
	%>
		<input type="hidden" name="id" value="<%=resultSet.getString("id")%>" />
		<div class="col-8">
			<div class="input-group">
				<label for="email" style="font-size: 1.1rem;">SLIIT Student
					Identification Number</label><input class="input--style-2" type="text"
					placeholder="Student ID" name="studentId"
					value="<%=resultSet.getString("studentId")%>">
			</div>
		</div>
		<div class="col-8">
			<div class="input-group">
				<label for="email" style="font-size: 1.1rem;">Student Name</label><input
					class="input--style-2" type="text" placeholder="Student Name"
					name="studentName" value="<%=resultSet.getString("studentName")%>">
			</div>
		</div>
		<div class="col-8">
			<div class="input-group">
				<div class="rs-select2 js-select-simple select--no-search">
					<label for="email" style="font-size: 1.1rem;">Specialization</label><select
						name="specialization"
						value="<%=resultSet.getString("specialization")%>">
						<option disabled="disabled" selected="selected">Specialization</option>
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
				<label for="email" style="font-size: 1.1rem;">Student E-Mail</label><input
					class="input--style-2" type="text" placeholder="Student E-Mail"
					name="studentEmail"
					value="<%=resultSet.getString("studentEmail")%>">
			</div>
		</div>
		<div class="col-8">
			<div class="input-group">
				<label for="email" style="font-size: 1.1rem;">Supervisor
					E-Mail</label><input class="input--style-2" type="text"
					placeholder="Supervisor E-Mail" name="supervisorEmail"
					value="<%=resultSet.getString("supervisorEmail")%>">
			</div>
		</div>
		<div class="col-8">
			<div class="input-group">
				<label for="email" style="font-size: 1.1rem;">Mobile Number</label><input
					class="input--style-2" type="text" placeholder="Mobile Number"
					name="stuMobileNumber"
					value="<%=resultSet.getLong("stuMobileNumber")%>">
			</div>
		</div>

		<div class="col-8">
			<div class="input-group">
				<label for="email" style="font-size: 1.1rem;">Internship
					Start Date</label><input class="input--style-2 js-datepicker" type="text"
					placeholder="Internship Start Date" name="internshipStartDate"
					value="<%=resultSet.getString("internshipStartDate")%>"> <i
					class="zmdi zmdi-calendar-note input-icon js-btn-calendar"></i>
			</div>
		</div>

		<div class="col-8">
			<div class="input-group">
				<div class="rs-select2 js-select-simple select--no-search">
					<label for="email" style="font-size: 1.1rem;">Current Year
						of Registration</label><select name="currentYear"
						value="<%=resultSet.getString("currentYear")%>">
						<option disabled="disabled" selected="selected">Current
							Year of Registration</option>
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
				<label for="email" style="font-size: 1.1rem;">Plan to
					Complete 2nd Year</label><input class="input--style-2 js-datepicker"
					type="text" placeholder="Plan to Complete 2nd Year"
					name="plantoComplete2ndYear"
					value="<%=resultSet.getString("plantoComplete2ndYear")%>">
				<i class="zmdi zmdi-calendar-note input-icon js-btn-calendar"></i>
			</div>
		</div>

		<div class="col-8">
			<div class="input-group">
				<div class="rs-select2 js-select-simple select--no-search">
					<label for="email" style="font-size: 1.1rem;">SLIIT Student
						Email</label><select name="periodComplete2year"
						value="<%=resultSet.getString("periodComplete2year")%>">
						<option disabled="disabled" selected="selected">Period of
							Complete 2nd Year</option>
						<option value="January - June">January - June</option>
						<option value="June - November">June - November</option>
					</select>
					<div class="select-dropdown"></div>
				</div>
			</div>
		</div>
		<div class="p-t-30">
			<input type="submit" class="btn btn--radius btn--green" value="Add">
		</div>
	</form>
	</body>
</html>
	<%
	String studentId = request.getParameter("studentId");
	String studentName = request.getParameter("studentName");
	String specialization = request.getParameter("specialization");
	String studentEmail = request.getParameter("studentEmail");
	String supervisorEmail = request.getParameter("supervisorEmail");
	long stuMobileNumber = Long.parseLong(request.getParameter("stuMobileNumber"));
	String internshipStartDate = request.getParameter("internshipStartDate");
	String currentYear = request.getParameter("currentYear");
	String plantoComplete2ndYear = request.getParameter("plantoComplete2ndYear");
	String periodComplete2year = request.getParameter("periodComplete2year");
	if(studentId!=null && studentName!=null && specialization!=null && studentEmail!=null && supervisorEmail!=null && internshipStartDate!=null && currentYear!=null && plantoComplete2ndYear!=null && periodComplete2year!=null){
		String query = "Update student_details set studentId=?,studentName=?,specialization=?,studentEmail=?,supervisorEmail=?,stuMobileNumber=?,internshipStartDate=?,currentYear=?,plantoComplete2ndYear=?,periodComplete2year=? where id= '"+studentId+"'";
		pstatement = con.prepareStatement(query);
		pstatement.setString(1, studentId);
		pstatement.setString(2, studentName);
		pstatement.setString(3, studentEmail);
		pstatement.setString(4, specialization);
		pstatement.setString(5, supervisorEmail);
		pstatement.setLong(6, stuMobileNumber);
		pstatement.setString(7, internshipStartDate);
		pstatement.setString(8, currentYear);
		pstatement.setString(9, plantoComplete2ndYear);
		pstatement.setString(10, periodComplete2year);
		pstatement.executeUpdate();
		response.sendRedirect("studentDetails.jsp");

	
	}
	}
	%>

