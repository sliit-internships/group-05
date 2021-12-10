package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
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
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/admindb", "root", "11111");
			Statement stmt = con.createStatement();
			String query = "select * from system_register where email='"+email+"' and password='"+password+"'";
			
			ResultSet rs = stmt.executeQuery(query);
			
			if(rs.next()) {
				/* out.println("Login Successfully ...!"); */
				RequestDispatcher dispatcher = req.getRequestDispatcher("adminHome.jsp");
		    	dispatcher.forward(req, res);
			}else {
				/* out.println("Login Fail ...!"); */
				RequestDispatcher dispatcher = req.getRequestDispatcher("error404.jsp");
		    	dispatcher.forward(req, res);
			}
		}catch (Exception e) {
			out.println(e);

		}
		
	}
	
	
}
