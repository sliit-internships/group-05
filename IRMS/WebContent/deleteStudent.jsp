<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String id=request.getParameter("id");
int num = Integer.parseInt(id);
Class.forName("com.mysql.jdbc.Driver").newInstance();
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/admindb", "root", "11111");
Statement st=conn.createStatement();
st.executeUpdate("DELETE FROM student_details WHERE s_id='"+num+"'");
response.sendRedirect("studentDetails.jsp");
%>