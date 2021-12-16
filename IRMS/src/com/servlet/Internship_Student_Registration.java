package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/Internship_Student_Registration")
public class Internship_Student_Registration extends HttpServlet {
	private static final long serialVersionUID = 1L;
	/*
	 * String id, name, email, mobile, year, semester, specialization, foundintern,
	 * supervisoremail, acceptancetype;
	 */

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		try {
			String id = request.getParameter("id");
			String name = request.getParameter("name");
			String email = request.getParameter("email");
			String mobile = request.getParameter("mobile");
			String year = request.getParameter("seeInternshipField");
			String semester = request.getParameter("semester");
			String specialization = request.getParameter("specialization");
			String foundintern = request.getParameter("seeInternFound");
			String supervisoremail = request.getParameter("supemail");
			String acceptancetype = "PENDING";

			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/admindb", "root", "");
			String query = "update internship_registered_student set name='" + name + "', email='" + email + "', mobile='"+ mobile + "', year='" + year + "', semester='" + semester + "', specialization='" + specialization+ "', foundintern='" + foundintern + "', supervisoremail='" + supervisoremail + "',acceptancetype='" + acceptancetype + "' where id='" + id + "'";
					
			PreparedStatement ps = con.prepareStatement(query);
			ps.executeUpdate();
			 RequestDispatcher dispatcher = request.getRequestDispatcher("SingleStudentProfile.jsp");
			 dispatcher.forward(request, response);
		} catch (Exception e) {
			e.printStackTrace();

		}

	}

	/*
	 * protected void doPost(HttpServletRequest req, HttpServletResponse res) throws
	 * ServletException, IOException { res.setContentType("text/html");
	 *  id = req.getParameter("id");
	 *  name = req.getParameter("name");
	 * email = req.getParameter("email");
	 * mobile=req.getParameter("mobile");
	 * year=req.getParameter("seeInternshipField");
	 * semester=req.getParameter("semester");
	 * secondyear=req.getParameter("secondyear");
	 * specialization=req.getParameter("specialization");
	 * foundintern=req.getParameter("seeInternFound");
	 * supervisoremail=req.getParameter("supemail");
	 *  acceptancetype = "Pending";
	 * 
	 * 
	 * PrintWriter out = res.getWriter(); // out.println(name);
	 * 
	 * try { Class.forName("com.mysql.jdbc.Driver"); Connection con =
	 * DriverManager.getConnection("jdbc:mysql://localhost:3306/admindb", "root",
	 * "root"); 
	 * String query = * "insert into internship_registered_student(id,name,email,mobile,year,semester,specialization,supervisoremail,foundintern,acceptancetype) values(?,?,?,?,?,?,?,?,?,?)"
	 * ; String doublequery =
	 * "insert into double_insert(id,email,other1,other2) values(?,?,?,?)";
	 * PreparedStatement ps = con.prepareStatement(query); PreparedStatement
	 * doubleps = con.prepareStatement(doublequery);
	 * 
	 * ps.setString(1, id); ps.setString(2, name); ps.setString(3, email);
	 * ps.setString(4, mobile); ps.setString(5, year); ps.setString(6, semester);
	 * ps.setString(7, specialization); ps.setString(8, supervisoremail);
	 * ps.setString(9, foundintern); ps.setString(10, acceptancetype);
	 * ps.executeUpdate();
	 * 
	 * 
	 * 
	 * doubleps.executeUpdate();
	 * 
	 * 
	 * 
	 * 
	 * 
	 * } catch (Exception e) {
	 * 
	 * } }
	 */

}
