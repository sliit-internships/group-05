package com.servlet;
import java.io.IOException; 
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.time.Instant;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

public class XLsheetController extends HttpServlet
{
	private static DateFormat date = new SimpleDateFormat("dd/MM/yy");
	String Company_Registered_Number;
	String Company_Registered_Name;
	String Company_Address;
	String Company_Start_Date;
	String id;
	String name;
	String email;
	String year;


	public String getCompany_Registered_Number() {
		return Company_Registered_Number;
	}



	public void setCompany_Registered_Number(String nCompany_Registered_Number) {
		Company_Registered_Number = nCompany_Registered_Number;
	}



	public String getCompany_NAME() {
		return Company_Registered_Name;
	}



	public void setCompany_NAME(String nCompany_NAME) {
		Company_Registered_Name = nCompany_NAME;
	}



	public String getCompany_Address() {
		return Company_Address;
	}



	public void setCompany_Address(String nCompany_Address) {
		Company_Address = nCompany_Address;
	}



	public String getCompany_Start_Date() {
		return Company_Start_Date;
	}



	public void setCompany_Start_Date(String nCompany_Start_Date) {
		Company_Start_Date = nCompany_Start_Date;
	}

	public String getid() {
		return id;
	}



	public void setid(String nid) {
		id = nid;
	}



	public String getname() {
		return name;
	}



	public void setname(String nname) {
		name = nname;
	}



	public String getemail() {
		return email;
	}



	public void setemail(String nemail) {
		email = nemail;
	}



	public String getyear() {
		return year;
	}



	public void setyear(String nyear) {
		year = nyear;
	}


	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException
	{
		// excel upload file
		String excel=req.getParameter("excel");
		// individual device ragistration
		String device=req.getParameter("device");
		// individual device remove
		String deviceid = req.getParameter("deviceid");
		
		PrintWriter out=resp.getWriter();		
				
			
			{
				Gson gson = new Gson(); 
				XLsheetController[] userArray = gson.fromJson(excel, XLsheetController[].class);  
				for(XLsheetController user : userArray)
				{	try {	
					
					 	System.out.println("----------------------------------------------------------------------------------------");
				
					 	
					    System.out.print(user.Company_Registered_Number+" ");
						System.out.print(user.Company_Registered_Name+" ");
						System.out.print(user.Company_Address+" ");
						 System.out.println(user.Company_Start_Date+" ");
						 System.out.print(user.name+" ");
							System.out.print(user.email+" ");
							 System.out.println(user.year+" ");
						 try { 
						 String Company_Registered_Number=user.Company_Registered_Number;
						 String Company_Registered_Name=user.Company_Registered_Name;
						 String Company_Address=user.Company_Address;
						 String Company_Start_Date=user.Company_Start_Date;
						 String id=user.id;
						 String name=user.name;
						 String email=user.email;
						 String year=user.year;
						 
						Class.forName("com.mysql.cj.jdbc.Driver");
											
						Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/admindb?autoReconnect=true&useSSL=false", "root",""); 
						String query =  "insert into admindb.approrved_company(Company_Registered_Number,Company_Registered_Name,Company_Address,Company_Start_Date) values(?,?,?,?)";
						PreparedStatement ps = con.prepareStatement(query);
						String query2 = "update internship_registered_student set year='" +year+ "' where email='" + email + "'";
						PreparedStatement ps2 = con.prepareStatement(query2);
						
							ps.setString(1, Company_Registered_Number); 
							ps.setString(2, Company_Registered_Name);
							ps.setString(3, Company_Address);
							ps.setString(4, Company_Start_Date);
							
							ps.executeUpdate();
							ps2.executeUpdate();
							
						
							
							
							 } catch (Exception e) {
							 
							} 
						
				}catch (Exception e) {
					e.printStackTrace();

				}
				
				System.out.println("----------------------------------------------------------------------------------------");
				out.print("Excel sheet uploaded successfully");
			}}

		 
		

	}}
