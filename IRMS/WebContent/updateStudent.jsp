<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
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
String password = "11111";
try {
	Class.forName(driver);
} catch (ClassNotFoundException e) {
	e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<%
try {
	connection = DriverManager.getConnection(connectionUrl + database, userid, password);
	statement = connection.createStatement();
	String sql = "select * from student_details where studentId=" + id;
	resultSet = statement.executeQuery(sql);
	while (resultSet.next()) {
%>
<!DOCTYPE html>
<html>
<body>
	<h1>Update data from database</h1>

	<form method="post" action="studentUpdateProcess.jsp">
		<input type="hidden" name="studentId"
			value="<%=resultSet.getString("studentId")%>">
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
					value="<%=resultSet.getString("stuMobileNumber")%>">
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
	<%
	}
	connection.close();
	} catch (Exception e) {
	e.printStackTrace();
	}
	%>

</body>
</html>