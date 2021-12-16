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

@WebServlet("/addCompanyManuallyServlet")
public class addCompanyManuallyServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	/*
	 * String id, name, email, mobile, year, semester, specialization, foundintern,
	 * supervisoremail, acceptancetype;
	 */

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		/*
		 * try { String id = request.getParameter("id"); String name =
		 * request.getParameter("name"); String email = request.getParameter("email");
		 * String mobile = request.getParameter("mobile"); String year =
		 * request.getParameter("seeInternshipField"); String semester =
		 * request.getParameter("semester"); String specialization =
		 * request.getParameter("specialization"); String foundintern =
		 * request.getParameter("seeInternFound"); String supervisoremail =
		 * request.getParameter("supemail"); String acceptancetype = "PENDING";
		 * 
		 * Class.forName("com.mysql.jdbc.Driver"); Connection con =
		 * DriverManager.getConnection("jdbc:mysql://localhost:3306/admindb", "root",
		 * "root"); String query = "update internship_registered_student set name='" +
		 * name + "', email='" + email + "', mobile='"+ mobile + "', year='" + year +
		 * "', semester='" + semester + "', specialization='" + specialization+
		 * "', foundintern='" + foundintern + "', supervisoremail='" + supervisoremail +
		 * "',acceptancetype='" + acceptancetype + "' where id='" + id + "'";
		 * 
		 * PreparedStatement ps = con.prepareStatement(query); ps.executeUpdate();
		 * RequestDispatcher dispatcher =
		 * request.getRequestDispatcher("FinalProfile.jsp"); dispatcher.forward(request,
		 * response); } catch (Exception e) { e.printStackTrace();
		 * 
		 * }
		 */

	}

	
	  protected void doPost(HttpServletRequest req, HttpServletResponse res) throws
	  ServletException, IOException {
		  System.out.println("59");
		  res.setContentType("text/html");
	   String Company_Registered_Number = req.getParameter("id");
	   String Company_Registered_Name = req.getParameter("name");
	   String Company_Address = req.getParameter("address");
	   String Contact_Number=req.getParameter("mobile");
	   String Company_Start_Date=req.getParameter("startdate");
	   String Company_Size=req.getParameter("companysize");
	   String Number_of_Employees=req.getParameter("no_of_emp");
	   String acceptancetype="accepted";
	   System.out.println("69");
	  
	  PrintWriter out = res.getWriter(); // out.println(name);
	  
	  try { Class.forName("com.mysql.jdbc.Driver"); 
	  Connection con =  DriverManager.getConnection("jdbc:mysql://localhost:3306/admindb", "root",""); 
	  String query = "insert into admindb.approrved_company(Company_Registered_Number,Company_Registered_Name,Company_Address,Contact_Number,Company_Start_Date,Company_Size,Number_of_Employees,acceptancetype) values(?,?,?,?,?,?,?,?)"; 
	  PreparedStatement ps = con.prepareStatement(query); 
	  System.out.println("77");
	  ps.setString(1, Company_Registered_Number);
	  ps.setString(2, Company_Registered_Name);
	  ps.setString(3, Company_Address);
	  ps.setString(4, Contact_Number);
	  ps.setString(5, Company_Start_Date);
	  ps.setString(6, Company_Size);
	  ps.setString(7, Number_of_Employees);
	  ps.setString(8, acceptancetype);
	  ps.executeUpdate();
	  System.out.println("87");
	  RequestDispatcher dispatcher = req.getRequestDispatcher("companyDetails.jsp");
	  dispatcher.forward(req, res);
	  System.out.println("90");


	 
	 
	 
	 
	  } catch (Exception e) {
	  
	  } }
	 

}
