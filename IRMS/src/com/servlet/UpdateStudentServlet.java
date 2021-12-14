package com.servlet;



import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


@WebServlet("/UpdateStudentServlet")
public class UpdateStudentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    public UpdateStudentServlet() {
      super();
      // TODO Auto-generated constructor stub
  }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		try {
			String studentId = request.getParameter("studentId");
			String studentName = request.getParameter("studentName");
			String specialization = request.getParameter("specialization");
			String studentEmail = request.getParameter("studentEmail");
			String supervisorEmail = request.getParameter("supervisorEmail");
			long stuMobileNumber = Long.parseLong(request.getParameter("stuMobileNumber"));
			String internshipStartDate = request.getParameter("internshipStartDate");
			String currentYear = request.getParameter("currentYear");
			String plantoComplete2ndYear = request.getParameter("plantoComplete2ndYear");
			String periodComplete2year = request.getParameter("periodComplete2year");
			/*
			 * //String id= "ppp"; String name=request.getParameter("name"); String
			 * email=request.getParameter("email"); String
			 * password=request.getParameter("password");
			 * 
			 * String acceptancetype = request.getParameter("acceptancetype");
			 */
	
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/admindb", "root", "11111");
			String query = "Update student_details set studentId=?,studentName=?,specialization=?,studentEmail=?,supervisorEmail=?,stuMobileNumber=?,internshipStartDate=?,currentYear=?,plantoComplete2ndYear=?,periodComplete2year=? where studentId="+studentId;
			PreparedStatement ps = con.prepareStatement(query);
			ps = con.prepareStatement(query);
			ps.setString(1, studentId);
			ps.setString(2, studentName);
			ps.setString(3, studentEmail);
			ps.setString(4, specialization);
			ps.setString(5, supervisorEmail);
			ps.setLong(6, stuMobileNumber);
			ps.setString(7, internshipStartDate);
			ps.setString(8, currentYear);
			ps.setString(9, plantoComplete2ndYear);
			ps.setString(10, periodComplete2year);
			ps.executeUpdate();
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("studentDetails.jsp");
			dispatcher.forward(request, response);
		}catch(Exception e){
			e.printStackTrace();
			
		}
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

