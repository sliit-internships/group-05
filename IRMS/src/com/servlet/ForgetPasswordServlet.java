package com.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class ForgetPasswordServlet extends HttpServlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	String email, securityQuestion, answer, newPassword;

	public void doPost(HttpServletRequest req, HttpServletResponse res) throws IOException {
		res.setContentType("text/html");
		email = req.getParameter("email");
	    securityQuestion = req.getParameter("securityQuestion");
	    answer = req.getParameter("answer");
	    newPassword = req.getParameter("newPassword");
	    
	    int check = 0;

		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/admindb", "root", "11111");
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery("select * from system_register where email='"+email+"' and securityQuestion='"+securityQuestion+"' and answer='"+answer+"'");
			
			while(rs.next()) {
				check = 1;
				st.executeUpdate("update system_register set password='"+newPassword+"' where email='"+email+"'");
				res.sendRedirect("forgetPassword.jsp?msg=done");
			}
			if(check == 0) {
				res.sendRedirect("forgetPassword.jsp?msg=invalid");
			}
	    	
		} catch (Exception e) {
			System.out.println(e);

		}
	}

}
