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

/**
 * Servlet implementation class Internship_Student_Registration
 */
@WebServlet("/Internship_Student_Registration")
public class Internship_Student_Registration extends HttpServlet {
	private static final long serialVersionUID = 1L;
	String id, name, email;   

	
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		res.setContentType("text/html");
		id = req.getParameter("id");
		name = req.getParameter("name");
		email = req.getParameter("email");

		PrintWriter out = res.getWriter();
//         out.println(name);

		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/admindb", "root", "root");
			String query = "insert into internship_registered_student(id,name,email) values(?,?,?)";
			PreparedStatement ps = con.prepareStatement(query);

			ps.setString(1, id);
			ps.setString(2, name);
			ps.setString(3, email);
	
			ps.executeUpdate();

			out.println("You have registered successfullly");
			
			

		} catch (Exception e) {

		}
	}

}
