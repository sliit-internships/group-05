package com.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class RegisterServlet extends HttpServlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	String name, email, password, securityQuestion, answer;

	public void doPost(HttpServletRequest req, HttpServletResponse res) throws IOException {
		res.setContentType("text/html");
		name = req.getParameter("name");
		email = req.getParameter("email");
		password = req.getParameter("password");
	    securityQuestion = req.getParameter("securityQuestion");
	    answer = req.getParameter("answer");

		/*
		 * PrintWriter out = res.getWriter(); out.println(name);
		 */

		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/admindb", "root", "11111");
			String query = "insert into system_register(name,email,password,securityQuestion,answer) values(?,?,?,?,?)";
			PreparedStatement ps = con.prepareStatement(query);

			ps.setString(1, name);
			ps.setString(2, email);
			ps.setString(3, password);
			ps.setString(4, securityQuestion);
			ps.setString(5, answer);

			ps.executeUpdate();

			/* out.println("Data Insert Successfully !!!"); */
			RequestDispatcher dispatcher = req.getRequestDispatcher("systemLogin.jsp");
	    	dispatcher.forward(req, res);
	    	
		} catch (Exception e) {

		}
	}

}
