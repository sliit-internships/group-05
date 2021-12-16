package com.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class SupervisorSystemRegistrationServlet extends HttpServlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	String email, password;

	public void doPost(HttpServletRequest req, HttpServletResponse res) throws IOException {
		res.setContentType("text/html");

		email = req.getParameter("studentEmail");
		password = req.getParameter("studentPassword");

		/*
		 * PrintWriter out = res.getWriter(); out.println(name);
		 */

		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/admindb", "root", "");
			String query = "insert into supervisorsystemreg(email,password) values(?,?)";
			PreparedStatement ps = con.prepareStatement(query);

			ps.setString(1, email);
			ps.setString(2, password);

			ps.executeUpdate();

			/* out.println("Data Insert Successfully !!!"); */
			RequestDispatcher dispatcher = req.getRequestDispatcher("studentLogin.jsp");
			dispatcher.forward(req, res);

		} catch (Exception e) {

		}
	}

}
