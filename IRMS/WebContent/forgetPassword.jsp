
<%@page import="org.apache.catalina.filters.ExpiresFilter.XServletOutputStream"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Count Rows JSP</title>




</head>
<body>

<script src="https://smtpjs.com/v3/smtp.js"></script>
<script type="text/javascript">

let x = Math.floor((Math.random() * 99999) + 1);
document.getElementById("demo").innerHTML = x;


function sendEmail(){
Email.send({

Host : "smtp.gmail.com",
SecureToken:"6b588f3d-d58e-49b0-b954-3b05bd91e4cb",
Username : "sliit.irms@gmail.com",
Password : "zhfflczoimlqazis",
To : document.getElementById('supemail').value,
From : "sliit.irms@gmail.com",
Subject : "Forgot Password",
Body :  "This "+document.getElementById('id').value+" student "+ x +"has been mentioned you as the supervisor.Please follow below provided link to register with IRMS system"
}).then(
message => alert(message)
);
}


</script>

	<%
	try {
		System.out.println("46");
		Class.forName("com.mysql.jdbc.Driver").newInstance();
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/admindb", "root", "");
		Statement st = con.createStatement();
		String email = request.getParameter("email");
		String strQuery = "SELECT password FROM studentsystemreg where email='" + email + "'";
		PreparedStatement ps = con.prepareStatement(strQuery);
		//ps.executeUpdate();
		
		/* rs.next(); */
		System.out.println("54");
		/* String Countrow = rs.getString(1); */
		System.out.println("56");
		
	
		ResultSet rs = st.executeQuery(strQuery);
		System.out.println(rs);

		
		if (strQuery.isEmpty()) {
			/*mail code
			paste your mail code here
			------------------
			Mail code*/
			System.out.println("if");
			
			
			
			out.println("Invalid Email Id !");
			
		} else {
			out.println("Password send to your email id successfully !");
			out.println(rs);
			
		}
	} catch (Exception e) {
		e.printStackTrace();
	}
	%>
	
	
</body>
</html>