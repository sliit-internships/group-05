package com.StudentForm_I_1A;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import feed.DatabaseConnecter;

//Servlet Name 
@WebServlet("/Feedback") 
public class StudentForm_I_1A extends HttpServlet { 
	private static final long serialVersionUID = 1L; 

	protected void doPost(HttpServletRequest request, 
HttpServletResponse response) 

		throws ServletException, IOException 
	{ 
		try { 

			
			Connection con = DatabaseConnecter.initializeDatabase(); 

			
			PreparedStatement st = con 
				.prepareStatement("insert into feed1 values(?,?,?,?,?)"); 

			st.setInt(1, Integer.valueOf(request.getParameter("Fid"))); 
			st.setString(2, String.valueOf(request.getParameter("Fname")));
			st.setString(3, String.valueOf(request.getParameter("Fdate")));
			st.setString(4, String.valueOf(request.getParameter("Femail"))); 
			st.setString(5, String.valueOf(request.getParameter("Fdes"))); 
			
			
			st.executeUpdate(); 

			
			st.close(); 
			con.close(); 

			 
			PrintWriter out = response.getWriter(); 

			
			RequestDispatcher rd = request.getRequestDispatcher("/ViewDetails.jsp");
			rd.include(request, response);
		
		} 
		catch (Exception e) { 
			e.printStackTrace(); 
		} 
	} 

}



