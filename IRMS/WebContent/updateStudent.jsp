<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>

<!DOCTYPE html>
<html>
<%
String host = "jdbc:mysql://localhost:3306/admindb";
Statement stmt = null;
Connection con = null;
ResultSet rs = null;
PreparedStatement pstmt = null;
Class.forName("com.mysql.jdbc.Driver").newInstance();
con = DriverManager.getConnection(host, "root", "11111");
%>
<body>
	<h1>Update data from database</h1>

	<form method="post" action="">
		<%
		stmt = con.createStatement();
		String id = request.getParameter("id");
		int num = Integer.parseInt(id);
		String data = "select * from student_details where s_id='" + num + "'";
		rs = stmt.executeQuery(data);
		while (rs.next()) {
		%>
		<input type="hidden" name="id" value='<%=rs.getString("s_id")%>' />
		<div class="col-8">
			<div class="input-group">
				<label for="email" style="font-size: 1.1rem;">SLIIT Student
					Identification Number</label><input class="input--style-2" type="text"
					placeholder="Student ID" name="studentId"
					value='<%=rs.getString("studentId")%>'>
			</div>
		</div>
		<div class="col-8">
			<div class="input-group">
				<label for="email" style="font-size: 1.1rem;">Student Name</label><input
					class="input--style-2" type="text" placeholder="Student Name"
					name="studentName" value='<%=rs.getString("studentName")%>'>
			</div>
		</div>
		<div class="col-8">
			<div class="input-group">
				<div class="rs-select2 js-select-simple select--no-search">
					<label for="email" style="font-size: 1.1rem;">Specialization</label><select
						name="specialization" ><%=rs.getString("specialization")%>
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
					name="studentEmail" value='<%=rs.getString("studentEmail")%>'>
			</div>
		</div>
		<div class="col-8">
			<div class="input-group">
				<label for="email" style="font-size: 1.1rem;">Supervisor
					E-Mail</label><input class="input--style-2" type="text"
					placeholder="Supervisor E-Mail" name="supervisorEmail"
					value='<%=rs.getString("supervisorEmail")%>'>
			</div>
		</div>
		<div class="col-8">
			<div class="input-group">
				<label for="email" style="font-size: 1.1rem;">Mobile Number</label><input
					class="input--style-2" type="text" placeholder="Mobile Number"
					name="stuMobileNumber" value='<%=rs.getString("stuMobileNumber")%>'>
			</div>
		</div>

		<div class="col-8">
			<div class="input-group">
				<label for="email" style="font-size: 1.1rem;">Internship
					Start Date</label><input class="input--style-2 js-datepicker" type="text"
					placeholder="Internship Start Date" name="internshipStartDate"
					value='<%=rs.getString("internshipStartDate")%>'> <i
					class="zmdi zmdi-calendar-note input-icon js-btn-calendar"></i>
			</div>
		</div>

		<div class="col-8">
			<div class="input-group">
				<div class="rs-select2 js-select-simple select--no-search">
					<label for="email" style="font-size: 1.1rem;">Current Year
						of Registration</label><select name="currentYear"
						><%=rs.getString("currentYear")%>
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
					value='<%=rs.getString("plantoComplete2ndYear")%>'> <i
					class="zmdi zmdi-calendar-note input-icon js-btn-calendar"></i>
			</div>
		</div>

		<div class="col-8">
			<div class="input-group">
				<div class="rs-select2 js-select-simple select--no-search">
					<label for="email" style="font-size: 1.1rem;">SLIIT Student
						Email</label><select name="periodComplete2year"
						><%=rs.getString("periodComplete2year")%>
						<option disabled="disabled" selected="selected">Period of
							Complete 2nd Year</option>
						<option value="January - June">January - June</option>
						<option value="June - November">June - November</option>
					</select>
					<div class="select-dropdown"></div>
				</div>
			</div>
		</div>
		<%} %>
		<div class="p-t-30">
			<input type="submit" class="btn btn--radius btn--green"
				value="Update">
		</div>
	</form>
</body>
</html>
<%
String a = request.getParameter("id");
String studentId = request.getParameter("studentId");
String studentName = request.getParameter("studentName");
String specialization = request.getParameter("specialization");
String studentEmail = request.getParameter("studentEmail");
String supervisorEmail = request.getParameter("supervisorEmail");
String stuMobileNumber = request.getParameter("stuMobileNumber");
String internshipStartDate = request.getParameter("internshipStartDate");
String currentYear = request.getParameter("currentYear");
String plantoComplete2ndYear = request.getParameter("plantoComplete2ndYear");
String periodComplete2year = request.getParameter("periodComplete2year");
if (a != null && studentId != null && studentName != null && specialization != null && studentEmail != null
		&& supervisorEmail != null && internshipStartDate != null && stuMobileNumber != null && currentYear != null
		&& plantoComplete2ndYear != null && periodComplete2year != null) {
	String query = "update student_details set studentId=?,studentName=?,specialization=?,studentEmail=?,supervisorEmail=?,stuMobileNumber=?,internshipStartDate=?,currentYear=?,plantoComplete2ndYear=?,periodComplete2year=? where s_id= '"
	+ a + "'";
	pstmt = con.prepareStatement(query);
	pstmt.setString(1, studentId);
	pstmt.setString(2, studentName);
	pstmt.setString(3, specialization);
	pstmt.setString(4, studentEmail);
	pstmt.setString(5, supervisorEmail);
	pstmt.setString(6, stuMobileNumber);
	pstmt.setString(7, internshipStartDate);
	pstmt.setString(8, currentYear);
	pstmt.setString(9, plantoComplete2ndYear);
	pstmt.setString(10, periodComplete2year);
	pstmt.executeUpdate();
	response.sendRedirect("studentDetails.jsp");
}

%>

