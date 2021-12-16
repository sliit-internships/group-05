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
	String table,email, password;

	public void doPost(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException {
		res.setContentType("text/html");
		
		email = req.getParameter("email");
		password = req.getParameter("password");
		table = req.getParameter("radio");

		System.out.println(table);
		
		PrintWriter out = res.getWriter();
		//str2.equals("studentsystemreg")
		
		if(table.equals("student")) {
			
			try {
				
				
				Class.forName("com.mysql.cj.jdbc.Driver");
				Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/admindb", "root", "");
				Statement stmt = con.createStatement();
				String query = "select * from studentsystemreg where email='"+email+"' and password='"+password+"'";
				
				ResultSet rs = stmt.executeQuery(query);
				
				if(rs.next()) {
					/* out.println("Login Successfully ...!"); */
					System.out.println("Welcome "+ email);
					
					req.setAttribute("email",email);
					req.getRequestDispatcher("adminHomeStudent.jsp").forward(req, res); 
					
					RequestDispatcher dispatcher = req.getRequestDispatcher("adminHomeStudent.jsp");
			    	dispatcher.forward(req, res);
				}else {
					out.println("Login Fail ...!");
				}
			}catch (Exception e) {
				out.println(e);

			}
			
		}else if(table.equals("supervisor")) {
			
			
			try {
				
				
				Class.forName("com.mysql.cj.jdbc.Driver");
				Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/admindb", "root", "");
				Statement stmt = con.createStatement();
				String query = "select * from supervisorsystemreg where email='"+email+"' and password='"+password+"'";
				
				ResultSet rs = stmt.executeQuery(query);
				
				if(rs.next()) {
					/* out.println("Login Successfully ...!"); */
					RequestDispatcher dispatcher = req.getRequestDispatcher("adminHomeSupervisor.jsp");
			    	dispatcher.forward(req, res);
				}else {
					out.println("Login Fail ...!");
				}
			}catch (Exception e) {
				out.println(e);

			}
			
		}else if(table.equals("coordinator")) {
			
			
			try {
				
				
				Class.forName("com.mysql.cj.jdbc.Driver");
				Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/admindb", "root", "");
				Statement stmt = con.createStatement();
				String query = "select * from coordinatorsystemreg where email='"+email+"' and password='"+password+"'";
				
				ResultSet rs = stmt.executeQuery(query);
				
				if(rs.next()) {
					/* out.println("Login Successfully ...!"); */
					RequestDispatcher dispatcher = req.getRequestDispatcher("adminHome.jsp");
			    	dispatcher.forward(req, res);
				}else {
					out.println("Login Fail ...!");
				}
			}catch (Exception e) {
				out.println(e);

			}
			
		}else if(table.equals("admin")) {
			
			
			try {
				
				
				Class.forName("com.mysql.cj.jdbc.Driver");
				Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/admindb", "root", "");
				Statement stmt = con.createStatement();
				String query = "select * from adminsystemreg where email='"+email+"' and password='"+password+"'";
				
				ResultSet rs = stmt.executeQuery(query);
				
				if(rs.next()) {
					/* out.println("Login Successfully ...!"); */
					RequestDispatcher dispatcher = req.getRequestDispatcher("adminHome.jsp");
			    	dispatcher.forward(req, res);
				}else {
					out.println("Login Fail ...!");
				}
			}catch (Exception e) {
				out.println(e);

			}
			
		}
		
		
		
		
	}
	
	
}
