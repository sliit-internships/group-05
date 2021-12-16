package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class Supervisor extends jakarta.servlet.http.HttpServlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	String student_id,name,title,email,number,company,c_address,start,end,hours,task,learn,specialization;

	public void doPost(HttpServletRequest req, HttpServletResponse res) throws IOException {
		res.setContentType("text/html");
		
		student_id = req.getParameter("student_id");
		email = req.getParameter("email");
		name = req.getParameter("name");
		number = req.getParameter("number");
		title = req.getParameter("title");
		company = req.getParameter("company");
		c_address = req.getParameter("c_address");
		start = req.getParameter("start");
		end = req.getParameter("end");
		hours = req.getParameter("hours");
		task = req.getParameter("task");
		learn = req.getParameter("learn");
		title = req.getParameter("specialization");
		

		
		 PrintWriter out = res.getWriter(); 
		 

		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/admindb", "root", "");
			String query = "insert into sup_intern_details (student_id,email,name,number,title,company,c_address,start,end,hours,task,learn,specialization) values(?,?,?,?,?,?,?,?,?,?,?,?,?)";
			PreparedStatement ps = con.prepareStatement(query);

			
			ps.setString(1,student_id);
			ps.setString(2,email);
			ps.setString(3,name);
			ps.setString(4,number);
			ps.setString(5,title);
			ps.setString(6,company);
			ps.setString(7,c_address);
			ps.setString(8,start);
			ps.setString(9,end);
			ps.setString(10,hours);
			ps.setString(11,task);
			ps.setString(12,learn);
			ps.setString(13,specialization);
			
			
			

			ps.executeUpdate();

			out.println("Data Insert Successfully !!!"); 
			/*RequestDispatcher dispatcher = req.getRequestDispatcher("supervisor_reg.jsp");
	    	dispatcher.forward(req, res);*/
	    	
		} catch (Exception e) {

		}
	}

}
