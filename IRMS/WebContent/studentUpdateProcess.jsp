<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%! String driverName = "com.mysql.jdbc.Driver";%>
<%!String url = "jdbc:mysql://localhost:3306/admindb";%>
<%!String user = "root";%>
<%!String psw = "11111";%>
<%
String studentId = request.getParameter("studentId");
String studentName=request.getParameter("studentName");
String specialization=request.getParameter("specialization");
String studentEmail=request.getParameter("studentEmail");
String supervisorEmail=request.getParameter("supervisorEmail");
String stuMobileNumber=request.getParameter("stuMobileNumber");
String internshipStartDate=request.getParameter("internshipStartDate");
String currentYear=request.getParameter("currentYear");
String plantoComplete2ndYear=request.getParameter("plantoComplete2ndYear");
String periodComplete2year=request.getParameter("periodComplete2year");
if(studentId != null)
{
Connection con = null;
PreparedStatement ps = null;
int personID = Integer.parseInt(studentId);
try
{
Class.forName(driverName);
con = DriverManager.getConnection(url,user,psw);
String sql="Update student_details set studentId=?,studentName=?,specialization=?,studentEmail=?,supervisorEmail=?,stuMobileNumber=?,internshipStartDate=?,currentYear=?,plantoComplete2ndYear=?,periodComplete2year=? where studentId="+studentId;
ps = con.prepareStatement(sql);
ps.setString(1,studentId);
ps.setString(2, studentName);
ps.setString(3, studentEmail);
ps.setString(4, specialization);
ps.setString(5, supervisorEmail);
ps.setString(6, stuMobileNumber);
ps.setString(7, internshipStartDate);
ps.setString(8, currentYear);
ps.setString(9, plantoComplete2ndYear);
ps.setString(10, periodComplete2year);

int i = ps.executeUpdate();
if(i > 0)
{
out.print("Record Updated Successfully");
}
else
{
out.print("There is a problem in updating Record.");
}
}
catch(SQLException sql)
{
request.setAttribute("error", sql);
out.println(sql);
}
}
%>