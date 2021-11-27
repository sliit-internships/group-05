package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;

import jakarta.servlet.http.HttpSession;

import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class LoginServlet extends HttpServlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	String email, password;

	public void doPost(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException {
		res.setContentType("text/html");
		
		email = req.getParameter("email");
		password = req.getParameter("password");
		
		PrintWriter out = res.getWriter();
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/admindb", "root", "");
			Statement stmt = con.createStatement();
			String query = "select * from new_table where email='"+email+"' and password='"+password+"'";
			String destPage = "studentLogin.jsp";
			
			ResultSet rs = stmt.executeQuery(query);
			
			if (rs != null) {
				HttpSession session = req.getSession();
				session.setAttribute("user", rs);
				destPage = "studentRegister.jsp";
			} else {
				String message = "Invalid email/password";
				req.setAttribute("message", message);
			}
			RequestDispatcher dispatcher = req.getRequestDispatcher(destPage);
			dispatcher.forward(req, res);
			
		} catch (SQLException | ClassNotFoundException ex) {
			throw new ServletException(ex);
		}
		
	}
	
	
}
