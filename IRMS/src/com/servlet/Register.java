package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


public class Register extends jakarta.servlet.http.HttpServlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	String name,title,email,number,company;

	public void doPost(HttpServletRequest req, HttpServletResponse res) throws IOException {
		res.setContentType("text/html");
		
		name = req.getParameter("name");
		email = req.getParameter("email");
		number = req.getParameter("number");
		title = req.getParameter("title");
		company = req.getParameter("company");

		
		 PrintWriter out = res.getWriter(); 
		 

		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/admindb", "root", "");
			String query = "insert into sup_details(name, email,number,title,company) values(?,?,?,?,?)";
			PreparedStatement ps = con.prepareStatement(query);

			
			ps.setString(1,name);
			ps.setString(2,email);
			ps.setString(3,number);
			ps.setString(4,title);
			ps.setString(5,company);
	
			

			ps.executeUpdate();

			out.println("Data Insert Successfully !!!"); 
			/*RequestDispatcher dispatcher = req.getRequestDispatcher("supervisor_reg.jsp");
	    	dispatcher.forward(req, res);*/
	    	
		} catch (Exception e) {

		}
	}

}