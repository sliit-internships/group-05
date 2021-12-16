<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String id = request.getParameter("id");
String driver = "com.mysql.cj.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "irms";
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
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>1-1B Form</title>
<link
	href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.5.0/css/all.css"
	integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU"
	crossorigin="anonymous">
<style>
html, body {
	min-height: 100%;
}

body, div, form, input, select, p {
	padding: 0;
	margin: 0;
	outline: none;
	font-family: Roboto, Arial, sans-serif;
	font-size: 14px;
	color: #666;
	line-height: 22px;
}

h1 {
	position: absolute;
	margin: 0;
	font-size: 32px;
	color: #fff;
	z-index: 2;
}

h2 {
	font-weight: 400;
}

.testbox {
	display: flex;
	justify-content: center;
	align-items: center;
	height: inherit;
	padding: 20px;
}

form {
	width: 50%;
	padding: 20px;
	border-radius: 6px;
	background: rgb(255, 255, 255);
	box-shadow: 0 0 20px 0 #095484;
}

.banner {
	position: relative;
	height: 210px;
	background-image: url("images/Picture13.jpg");
	background-size: cover;
	display: flex;
	justify-content: center;
	align-items: center;
	text-align: center;
}

.banner::after {
	content: "";
	background-color: rgba(0, 0, 0, 0.4);
	position: absolute;
	width: 100%;
	height: 100%;
}

input, select {
	margin-bottom: 10px;
	border: 1px solid #ccc;
	border-radius: 3px;
}

input {
	width: calc(100% - 10px);
	padding: 5px;
}

select {
	width: 100%;
	padding: 7px 0;
	background: transparent;
}

.item:hover p, .item:hover i, .question:hover p, .question label:hover,
	input:hover::placeholder, a {
	color: #095484;
}

.item input:hover, .item select:hover {
	border: 1px solid transparent;
	box-shadow: 0 0 6px 0 #095484;
	color: #095484;
}

.item {
	position: relative;
	margin: 10px 0;
}

input[type="date"]::-webkit-inner-spin-button {
	display: none;
}

.item i, input[type="date"]::-webkit-calendar-picker-indicator {
	position: absolute;
	font-size: 20px;
	color: #a9a9a9;
}

.item i {
	right: 2%;
	top: 30px;
	z-index: 1;
}

[type="date"]::-webkit-calendar-picker-indicator {
	right: 1%;
	z-index: 2;
	opacity: 0;
	cursor: pointer;
}

input[type=checkbox] {
	display: none;
}

label.check {
	position: relative;
	display: inline-block;
	margin: 5px 20px 10px 0;
	cursor: pointer;
}

.question span {
	margin-left: 30px;
}

span.required {
	margin-left: 0;
	color: red;
}

label.check:before {
	content: "";
	position: absolute;
	top: 2px;
	left: 0;
	width: 16px;
	height: 16px;
	border-radius: 2px;
	border: 1px solid #095484;
}

input[type=checkbox]:checked+.check:before {
	background: #095484;
}

label.check:after {
	content: "";
	position: absolute;
	top: 6px;
	left: 4px;
	width: 8px;
	height: 4px;
	border: 3px solid rgb(255, 255, 255);
	border-top: none;
	border-right: none;
	transform: rotate(-45deg);
	opacity: 0;
}

input[type=checkbox]:checked+label:after {
	opacity: 1;
}

.btn-block {
	margin-top: 10px;
	text-align: center;
}

.btn-next {
	margin-top: 10px;
	text-align: right;
}

button {
	width: 150px;
	padding: 10px;
	border: none;
	border-radius: 5px;
	background: #095484;
	font-size: 16px;
	color: #fff;
	cursor: pointer;
}

button:hover {
	background: #0666a3;
}

@media ( min-width : 568px) {
	.name-item, .city-item {
		display: flex;
		flex-wrap: wrap;
		justify-content: space-between;
	}
	.name-item input, .city-item input {
		width: calc(50% - 20px);
	}
	.city-item select {
		width: calc(50% - 8px);
	}
	input[type="date"]::-webkit-calendar-picker-indicator {
		background: transparent;
		bottom: 0;
		color: transparent;
		cursor: pointer;
		height: auto;
		left: 0;
		position: absolute;
		right: 0;
		top: 0;
		width: auto;
	}
}
</style>

</head>
<body>
	<div style="background-image: url('images/bg.jpg');">

		<div class="testbox">
			<form action="" method="post">

				<div class="banner">
					<h1>Supervisor and Internship Details</h1>
				</div>
				<div class="item">

					<p>
						1.SLIIT Student ID Number <span class="required"> *</span>
					</p>
					<div class="item">
						<input type="text" name="student_id" placeholder="ITxxxxxxxx"
							required>

					</div>

					<p>
						Supervisor Email<span class="required"> *</span>
					</p>
					<select name="country" id="country" onchange="this.form.submit();"
						required>

						<%
						try {
							String Query = "select * from sup_details";
							Class.forName("com.mysql.cj.jdbc.Driver").newInstance();
							Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/irms", "root", "");
							Statement stmt = conn.createStatement();
							ResultSet rs = stmt.executeQuery(Query);
							while (rs.next()) {
						%>
						<option value="<%=rs.getString("id")%>"
							<%if (request.getParameter("country") != null) {
	if (rs.getInt("id") == Integer.parseInt(request.getParameter("country"))) {
		out.println("selected");
	}
}%>><%=rs.getString("email")%></option>
						<%
						}
						} catch (Exception ex) {
						ex.printStackTrace();
						}
						%>
					</select>
					</td>
					</tr>

					<!-- 			<tr>
				<th>State Name</th>
				<td><select>
						<option value='0'>Select Statename</option>
				</select></td>
			</tr> -->


					<p>
						Supervisor name<span class="required"> *</span>
					</p>
					<name ="country" id="country" onchange="" required> <%
 try {
 	String query = "select * from sup_details where id=?";
 	Class.forName("com.mysql.cj.jdbc.Driver").newInstance();
 	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/irms", "root", "");
 	PreparedStatement psmt = con.prepareStatement(query);
 	psmt.setString(1, request.getParameter("country"));
 	ResultSet rs = psmt.executeQuery();
 	while (rs.next()) {
 %> <input type="text" value="<%=rs.getString("name")%>"> <%
 }
 } catch (Exception ex) {
 ex.printStackTrace();
 }
 %> </select>

					<p>
						Supervisor contact number<span class="required"> *</span>
					</p>
					<name ="country" id="country" onchange="" required> <%
 try {
 	String query = "select * from sup_details where id=?";
 	Class.forName("com.mysql.cj.jdbc.Driver").newInstance();
 	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/irms", "root", "");
 	PreparedStatement psmt = con.prepareStatement(query);
 	psmt.setString(1, request.getParameter("country"));
 	ResultSet rs = psmt.executeQuery();
 	while (rs.next()) {
 %> <input type="text" value="<%=rs.getString("number")%>"> <%
 }
 } catch (Exception ex) {
 ex.printStackTrace();
 }
 %> </select>

					<p>
						Title<span class="required"> *</span>
					</p>
					<name ="country" id="country" onchange="" required> <%
 try {
 	String query = "select * from sup_details where id=?";
 	Class.forName("com.mysql.cj.jdbc.Driver").newInstance();
 	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/irms", "root", "");
 	PreparedStatement psmt = con.prepareStatement(query);
 	psmt.setString(1, request.getParameter("country"));
 	ResultSet rs = psmt.executeQuery();
 	while (rs.next()) {
 %> <input type="text" value="<%=rs.getString("title")%>"> <%
 }
 } catch (Exception ex) {
 ex.printStackTrace();
 }
 %> </select>

					<p>
						Company name<span class="required"> *</span>
					</p>
					<name ="country" id="country" onchange="" required> <%
 try {
 	String query = "select * from sup_details where id=?";
 	Class.forName("com.mysql.cj.jdbc.Driver").newInstance();
 	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/irms", "root", "");
 	PreparedStatement psmt = con.prepareStatement(query);
 	psmt.setString(1, request.getParameter("country"));
 	ResultSet rs = psmt.executeQuery();
 	while (rs.next()) {
 %> <input type="text" value="<%=rs.getString("company")%>"> <%
 }
 } catch (Exception ex) {
 ex.printStackTrace();
 }
 %> </select>


					<p>
						Company address<span class="required"> *</span>
					</p>
					<select required>



						<%
						try {
							Class.forName("com.mysql.cj.jdbc.Driver");
							Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/irms", "root", "");
							String query = "SELECT * FROM companies";
							PreparedStatement ps = con.prepareStatement(query);
							ResultSet rs = ps.executeQuery();

							while (rs.next()) {
						%>
						<option><%=rs.getString("address")%></option>
						<%
						}

						} catch (Exception e) {

						}
						%>

					</select>
				</div>

				<div class="item">
					<p>
						Internship Start Date<span class="required"> *</span>
					</p>
					<input type="date" id="start" name="start" required>
				</div>

				<div class="item">
					<p>
						Internship End Date<span class="required"> *</span>
					</p>
					<input type="date" id="end" name="end" required>
				</div>
				<div class="item">
					<p>
						Expected Number of Hours Per Week that the student needs to work<span
							class="required"> *</span>
					</p>
					<input type="text" name="hours" required>
				</div>
				<div class="item">
					<p>
						Describe the tasks student needs to complete<span class="required">
							*</span>
					</p>
					<textarea id="text" name="task" rows="4" cols="98">
 			</textarea>
				</div>
				<div class="item">
					<p>
						Describe what student will learn<span class="required"> *</span>
					</p>
					<textarea id="text" name="learn" rows="4" cols="98">
 			</textarea>
				</div>

				<div class="item">
					<p>
						Student Specialization<span class="required"> *</span>
					</p>
					<small>Select the specialization student has registered for
						his degree program at SLIIT </small> <select name="specialization"
						id="specialization" required>
						<option value="">None</option>
						<option value="IT">IT</option>
						<option value="DS">DS</option>
						<option value="SE">SE</option>
						<option value="IM">IM</option>
						<option value="CS">CS</option>
						<option value="CSNE">CSNE</option>
						<option value="ISE">ISE</option>
					</select>
				</div>

				<div class="question">
					<p>
						Your Agreement <span class="required"> *</span>
					</p>
					<div class="question-answer checkbox-item">
						<div>
							<input type="checkbox" value="none" id="check_1" name="check"
								required /> <label for="check_1" class="check"><span>I
									certify above information is correct and take the full
									responsibility of the information provided</span></label>
						</div>
					</div>
				</div>
				<div class="btn-block">
					<button type="submit" href="/register.java">Submit</button>
				</div>


			</form>
			</form>
		</div>
</body>
</html>